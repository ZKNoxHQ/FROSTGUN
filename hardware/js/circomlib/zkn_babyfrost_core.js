import { createUniversalCurve } from './zkn_curve_wrapper.js';
import { blake2b } from "@noble/hashes/blake2.js";
import { Scalar } from "ffjavascript";
import crypto from 'crypto';
import { H1, H4, H5, H3 } from './zkn_babyfrost_hash.js';

// ============================================================================
// UTILITY FUNCTIONS
// ============================================================================

// Modular exponentiation
function modPow(base, exponent, modulus) {
    if (modulus === 1n) return 0n;
    let result = 1n;
    base = base % modulus;
    while (exponent > 0n) {
        if (exponent % 2n === 1n) {
            result = (result * base) % modulus;
        }
        exponent = exponent >> 1n;
        base = (base * base) % modulus;
    }
    return result;
}

// Modular inverse using Fermat's little theorem: a^(-1) = a^(p-2) mod p
function modInverse(a, modulus) {
    return modPow(a, modulus - 2n, modulus);
}

// Serialize scalar to 32-byte buffer (little-endian)
function serializeScalar(scalar) {
    const hex = scalar.toString(16).padStart(64, '0');
    const buffer = Buffer.from(hex, 'hex');
    return buffer.reverse();
}

// Serialize element (point) to bytes
function serializeElement(point) {
    const xHex = point.getX().toString(16).padStart(64, '0');
    const yHex = point.getY().toString(16).padStart(64, '0');

    // Concatenate x || y (64 bytes total)
    return Buffer.concat([
        Buffer.from(xHex, 'hex'),
        Buffer.from(yHex, 'hex')
    ]);
}

// ============================================================================
// LAGRANGIAN INTERPOLATION
// ============================================================================

// Lagrangian interpolation coefficient at 0: prod(x_j) / prod(x_j - x_i) for j != i
function Interpolate(L, x_i, modulus) {
    let num = BigInt(1);
    let deno = BigInt(1);

    for (let j = 0; j < L.length; j++) {
        let x_j = L[j];
        if (x_j != x_i) {
            num = (num * x_j) % modulus;
            // Handle negative values properly in modular arithmetic
            let diff = x_j - x_i;
            if (diff < 0n) {
                diff = (modulus + diff) % modulus;
            }
            deno = (deno * diff) % modulus;
        }
    }

    const denoInv = modInverse(deno, modulus);
    return (num * denoInv) % modulus;
}

// Interpolate the points (xi, P(xi)*G) at 0 to get group public key
// pubkeys is a list of zkn_point objects
// ids is a list of BigInt
function Interpolate_group_pubkey(pubkeys, ids, curve) {
    if (pubkeys.length != ids.length) {
        throw new Error('pubkeys and ids must have the same length');
    }

    let Q = curve.getZero();

    for (let i = 0; i < pubkeys.length; i++) {
        let Xi = pubkeys[i];
        let lam_i = Interpolate(ids, ids[i], curve.getOrder());
        Q = Q.add(Xi.multiply(lam_i));
    }

    return Q;
}

// ============================================================================
// NONCE GENERATION
// ============================================================================

// Generate a nonce using H3(random_bytes || secret)
function nonce_generate(secret, curve) {
    const random_bytes = crypto.randomBytes(32);
    const secret_enc = serializeScalar(secret);
    const input = Buffer.concat([random_bytes, secret_enc]);
    const nonce = H3(input, curve.getOrder());

    if (nonce === 0n) {
        return 1n;
    }

    return nonce;
}

// ============================================================================
// COMMITMENT PHASE
// ============================================================================

// FROST commit function
// Returns (nonces, commitments) where:
// - nonces = { hiding, binding }
// - commitments = { hiding, binding }
function commit(sk_i, curve) {
    const hiding_nonce = nonce_generate(sk_i, curve);
    const binding_nonce = nonce_generate(sk_i, curve);

    const hiding_nonce_commitment = curve.scalarMultiply(hiding_nonce);
    const binding_nonce_commitment = curve.scalarMultiply(binding_nonce);

    const nonces = {
        hiding: hiding_nonce,
        binding: binding_nonce
    };

    const comms = {
        hiding: hiding_nonce_commitment,
        binding: binding_nonce_commitment
    };

    return { nonces, comms };
}

// ============================================================================
// BINDING FACTORS
// ============================================================================

// Encode a single commitment (identifier, hiding_commitment, binding_commitment)
function encodeCommitment(identifier, hiding_commitment, binding_commitment) {
    const id_bytes = serializeScalar(identifier);
    const hiding_bytes = serializeElement(hiding_commitment);
    const binding_bytes = serializeElement(binding_commitment);

    return Buffer.concat([id_bytes, hiding_bytes, binding_bytes]);
}

// Encode the entire commitment list
function encodeGroupCommitmentList(commitment_list) {
    const encodedCommitments = commitment_list.map(comm =>
        encodeCommitment(comm.identifier, comm.hiding_nonce_commitment, comm.binding_nonce_commitment)
    );

    return Buffer.concat(encodedCommitments);
}

// Compute binding factors for FROST
// commitment_list: array of { identifier, hiding_nonce_commitment, binding_nonce_commitment }
function compute_binding_factors(group_public_key, commitment_list, msg, curve) {
    const group_public_key_enc = serializeElement(group_public_key);

    const msg_hash_scalar = H4(msg, curve.getOrder());
    const msg_hash = serializeScalar(msg_hash_scalar);

    const encoded_commitment_list = encodeGroupCommitmentList(commitment_list);
    const encoded_commitment_hash_scalar = H5(encoded_commitment_list, curve.getOrder());
    const encoded_commitment_hash = serializeScalar(encoded_commitment_hash_scalar);

    const rho_input_prefix = Buffer.concat([
        group_public_key_enc,
        msg_hash,
        encoded_commitment_hash
    ]);

    const binding_factor_list = [];

    for (const comm of commitment_list) {
        const identifier = comm.identifier;
        const identifier_bytes = serializeScalar(identifier);
        const rho_input = Buffer.concat([rho_input_prefix, identifier_bytes]);
        const binding_factor = H1(rho_input, curve.getOrder());

        binding_factor_list.push({
            identifier: identifier,
            binding_factor: binding_factor
        });
    }

    return binding_factor_list;
}

// ============================================================================
// GROUP COMMITMENT
// ============================================================================

// Helper function to find binding factor for a participant
function binding_factor_for_participant(binding_factor_list, identifier) {
    const entry = binding_factor_list.find(bf => bf.identifier === identifier);
    if (!entry) {
        throw new Error(`Binding factor not found for participant ${identifier}`);
    }
    return entry.binding_factor;
}

// Compute group commitment from commitment list and binding factors
function compute_group_commitment(commitment_list, binding_factor_list, curve) {
    let group_commitment = curve.getZero();

    for (const comm of commitment_list) {
        const identifier = comm.identifier;
        const hiding_nonce_commitment = comm.hiding_nonce_commitment;
        const binding_nonce_commitment = comm.binding_nonce_commitment;

        const binding_factor = binding_factor_for_participant(binding_factor_list, identifier);
        const binding_nonce = binding_nonce_commitment.multiply(binding_factor);

        group_commitment = group_commitment.add(hiding_nonce_commitment);
        group_commitment = group_commitment.add(binding_nonce);
    }

    return group_commitment;
}

// ============================================================================
// EXPORTS
// ============================================================================

export {
    // Utility functions
    modInverse,
    modPow,
    serializeScalar,
    serializeElement,

    // Lagrangian interpolation
    Interpolate,
    Interpolate_group_pubkey,

    // Nonce generation
    nonce_generate,

    // Commitment phase
    commit,

    // Binding factors
    encodeCommitment,
    encodeGroupCommitmentList,
    compute_binding_factors,

    // Group commitment
    compute_group_commitment
};