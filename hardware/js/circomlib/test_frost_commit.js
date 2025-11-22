import { createUniversalCurve } from './zkn_curve_wrapper.js';
import { nonce_generate, commit, compute_binding_factors, compute_group_commitment, serializeScalar, serializeElement, Interpolate, Interpolate_group_pubkey } from './zkn_babyfrost_core.js';
import crypto from 'crypto';

// Helper to format BigInt as hex
function toHex(value) {
    return '0x' + value.toString(16);
}

// Helper to format BigInt as C-style byte array
function toCArray(value) {
    const hex = value.toString(16).padStart(64, '0');
    const bytes = [];
    for (let i = 0; i < hex.length; i += 2) {
        bytes.push('0x' + hex.substr(i, 2));
    }
    return '{ ' + bytes.join(', ') + ' }';
}

// Helper to format Buffer as C-style byte array
function bufferToCArray(buffer) {
    const bytes = [];
    for (let i = 0; i < buffer.length; i++) {
        bytes.push('0x' + buffer[i].toString(16).padStart(2, '0'));
    }
    return '{ ' + bytes.join(', ') + ' }';
}

// Generate random BigInt less than max
function randomBigInt(max) {
    const maxHex = max.toString(16);
    const byteLength = Math.ceil(maxHex.length / 2);

    let random;
    do {
        const randomBytes = crypto.randomBytes(byteLength);
        random = BigInt('0x' + randomBytes.toString('hex'));
    } while (random >= max);

    return random;
}

// Modular inverse using Fermat's little theorem
function modInverse(a, modulus) {
    return modPow(a, modulus - 2n, modulus);
}

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

async function frostFullTest() {
    console.log("=== FROST Complete Test: 3-of-5 TSS ===\n");

    // Create Baby Jubjub curve
    const curve = await createUniversalCurve('babyjub');
    const order = curve.getOrder();

    console.log("Curve Parameters:");
    console.log(`  Curve: Baby Jubjub`);
    console.log(`  Order: ${toHex(order)}`);
    console.log(`  Modulus: ${toHex(curve.getModulus())}`);
    console.log();

    // ========================================
    // STEP 1: Key Generation (3-of-5 TSS)
    // ========================================
    console.log("=".repeat(80));
    console.log("STEP 1: Distributed Key Generation (3-of-5 Threshold)");
    console.log("=".repeat(80));
    console.log();

    const n = 5; // Total participants
    const t = 3; // Threshold
    const participantIds = [1n, 2n, 3n, 4n, 5n];

    // Generate random polynomial coefficients
    const secret = randomBigInt(order); // a0 (the shared secret)
    const a1 = randomBigInt(order);
    const a2 = randomBigInt(order);

    console.log("Secret Polynomial P(x) = a0 + a1*x + a2*x^2:");
    console.log(`  a0 (secret): ${toHex(secret)}`);
    console.log(`  a0 (C array): ${toCArray(secret)}`);
    console.log(`  a1:          ${toHex(a1)}`);
    console.log(`  a1 (C array): ${toCArray(a1)}`);
    console.log(`  a2:          ${toHex(a2)}`);
    console.log(`  a2 (C array): ${toCArray(a2)}`);
    console.log();

    // Generate secret shares for each participant
    const secretShares = [];
    const publicKeyShares = [];

    console.log("Secret Shares and Public Key Shares:");
    for (let i = 0; i < n; i++) {
        const x = participantIds[i];
        // Evaluate polynomial: P(x) = a0 + a1*x + a2*x^2
        const share = (secret + a1 * x + a2 * x * x) % order;
        secretShares.push(share);

        // Public key share = share * Base
        const pubkeyShare = curve.scalarMultiply(share);
        publicKeyShares.push(pubkeyShare);

        console.log(`  Participant ${x}:`);
        console.log(`    Secret share:  ${toHex(share)}`);
        console.log(`    Secret share (C): ${toCArray(share)}`);
        console.log(`    Pubkey.x:      ${toHex(pubkeyShare.getX())}`);
        console.log(`    Pubkey.x (C):  ${toCArray(pubkeyShare.getX())}`);
        console.log(`    Pubkey.y:      ${toHex(pubkeyShare.getY())}`);
        console.log(`    Pubkey.y (C):  ${toCArray(pubkeyShare.getY())}`);
    }
    console.log();

    // Compute group public key (should equal secret * Base)
    const groupPubkey = Interpolate_group_pubkey(publicKeyShares, participantIds, curve);
    const expectedGroupPubkey = curve.scalarMultiply(secret);

    console.log("Group Public Key (interpolated from shares):");
    console.log(`  x: ${toHex(groupPubkey.getX())}`);
    console.log(`  x (C): ${toCArray(groupPubkey.getX())}`);
    console.log(`  y: ${toHex(groupPubkey.getY())}`);
    console.log(`  y (C): ${toCArray(groupPubkey.getY())}`);
    console.log();

    console.log("Expected Group Public Key (secret * Base):");
    console.log(`  x: ${toHex(expectedGroupPubkey.getX())}`);
    console.log(`  x (C): ${toCArray(expectedGroupPubkey.getX())}`);
    console.log(`  y: ${toHex(expectedGroupPubkey.getY())}`);
    console.log(`  y (C): ${toCArray(expectedGroupPubkey.getY())}`);
    console.log();

    const keyGenCorrect = groupPubkey.equals(expectedGroupPubkey);
    console.log(`Key Generation Verification: ${keyGenCorrect ? '✓ PASS' : '✗ FAIL'}`);
    console.log();

    // ========================================
    // Test Vector: Interpolate Function
    // ========================================
    console.log("-".repeat(80));
    console.log("TEST VECTOR: Interpolate(L, x_i, modulus)");
    console.log("-".repeat(80));
    console.log();

    // Example: compute Lagrange coefficient for participant 1
    const testL = participantIds; // [1n, 2n, 3n, 4n, 5n]
    const testXi = participantIds[0]; // 1n
    const testModulus = curve.getOrder();

    console.log("Input:");
    console.log(`  L = [${testL.map(id => id.toString()).join(', ')}]`);
    console.log(`  L (hex) = [${testL.map(id => toHex(id)).join(', ')}]`);
    console.log(`  L (C) = { ${testL.map(id => toCArray(id)).join(',\n            ')} }`);
    console.log();
    console.log(`  x_i = ${testXi.toString()}`);
    console.log(`  x_i (hex) = ${toHex(testXi)}`);
    console.log(`  x_i (C) = ${toCArray(testXi)}`);
    console.log();
    console.log(`  modulus = ${toHex(testModulus)}`);
    console.log(`  modulus (C) = ${toCArray(testModulus)}`);
    console.log();

    // Call Interpolate function
    const testResult = Interpolate(testL, testXi, testModulus);

    console.log("Output:");
    console.log(`  result = ${toHex(testResult)}`);
    console.log(`  result (C) = ${toCArray(testResult)}`);
    console.log();
    console.log("-".repeat(80));
    console.log();

    // ========================================
    // Test Vector: Lagrangian Interpolation
    // ========================================
    console.log("-".repeat(80));
    console.log("TEST VECTOR: Lagrangian Interpolation Function");
    console.log("-".repeat(80));
    console.log();

    console.log("Input:");
    console.log(`  participant_ids = { ${participantIds.map(id => toHex(id)).join(', ')} }`);
    console.log(`  participant_ids (C) = { ${participantIds.map(id => toCArray(id)).join(',\n                          ')} }`);
    console.log();

    console.log("  public_key_shares (x coordinates):");
    for (let i = 0; i < publicKeyShares.length; i++) {
        console.log(`    Participant ${participantIds[i]}:`);
        console.log(`      x = ${toHex(publicKeyShares[i].getX())}`);
        console.log(`      x (C) = ${toCArray(publicKeyShares[i].getX())}`);
    }
    console.log();

    console.log("  public_key_shares (y coordinates):");
    for (let i = 0; i < publicKeyShares.length; i++) {
        console.log(`    Participant ${participantIds[i]}:`);
        console.log(`      y = ${toHex(publicKeyShares[i].getY())}`);
        console.log(`      y (C) = ${toCArray(publicKeyShares[i].getY())}`);
    }
    console.log();

    console.log(`  curve_order = ${toHex(curve.getOrder())}`);
    console.log(`  curve_order (C) = ${toCArray(curve.getOrder())}`);
    console.log();

    console.log("Output:");
    console.log("  group_public_key:");
    console.log(`    x = ${toHex(groupPubkey.getX())}`);
    console.log(`    x (C) = ${toCArray(groupPubkey.getX())}`);
    console.log(`    y = ${toHex(groupPubkey.getY())}`);
    console.log(`    y (C) = ${toCArray(groupPubkey.getY())}`);
    console.log();

    console.log("Verification:");
    console.log(`  Expected (secret * Base).x = ${toHex(expectedGroupPubkey.getX())}`);
    console.log(`  Expected (secret * Base).y = ${toHex(expectedGroupPubkey.getY())}`);
    console.log(`  Match: ${keyGenCorrect ? '✓ PASS' : '✗ FAIL'}`);
    console.log();
    console.log("-".repeat(80));
    console.log();

    // ========================================
    // STEP 2: Signing Session - Commitment Phase
    // ========================================
    console.log("=".repeat(80));
    console.log("STEP 2: Commitment Phase (Nonce Generation)");
    console.log("=".repeat(80));
    console.log();

    // Select 3 signers (participants 1, 2, 3)
    const signerIds = [1n, 2n, 3n];
    const signerIndices = [0, 1, 2]; // Indices in the arrays

    console.log(`Selected Signers: ${signerIds.map(id => `Participant ${id}`).join(', ')}`);
    console.log();

    // Each signer generates nonces and commitments
    const signerData = [];

    for (let i = 0; i < signerIds.length; i++) {
        const signerId = signerIds[i];
        const signerIndex = signerIndices[i];
        const signerSecret = secretShares[signerIndex];

        console.log(`Participant ${signerId} Commitment:`);
        console.log(`  Secret share: ${toHex(signerSecret)}`);
        console.log(`  Secret share (C): ${toCArray(signerSecret)}`);

        // Generate commitment
        const { nonces, comms } = commit(signerSecret, curve);

        console.log(`  Nonces:`);
        console.log(`    hiding_nonce:  ${toHex(nonces.hiding)}`);
        console.log(`    hiding_nonce (C):  ${toCArray(nonces.hiding)}`);
        console.log(`    binding_nonce: ${toHex(nonces.binding)}`);
        console.log(`    binding_nonce (C): ${toCArray(nonces.binding)}`);

        console.log(`  Commitments:`);
        console.log(`    hiding_nonce_commitment.x:  ${toHex(comms.hiding.getX())}`);
        console.log(`    hiding_nonce_commitment.x (C):  ${toCArray(comms.hiding.getX())}`);
        console.log(`    hiding_nonce_commitment.y:  ${toHex(comms.hiding.getY())}`);
        console.log(`    hiding_nonce_commitment.y (C):  ${toCArray(comms.hiding.getY())}`);
        console.log(`    binding_nonce_commitment.x: ${toHex(comms.binding.getX())}`);
        console.log(`    binding_nonce_commitment.x (C): ${toCArray(comms.binding.getX())}`);
        console.log(`    binding_nonce_commitment.y: ${toHex(comms.binding.getY())}`);
        console.log(`    binding_nonce_commitment.y (C): ${toCArray(comms.binding.getY())}`);

        signerData.push({
            identifier: signerId,
            secretShare: signerSecret,
            nonces: nonces,
            hiding_nonce_commitment: comms.hiding,
            binding_nonce_commitment: comms.binding
        });

        console.log();
    }

    // ========================================
    // STEP 3: Compute Binding Factors
    // ========================================
    console.log("=".repeat(80));
    console.log("STEP 3: Compute Binding Factors");
    console.log("=".repeat(80));
    console.log();

    // Message to sign
    const message = Buffer.from("FROST signature test message", 'utf8');
    console.log(`Message: "${message.toString('utf8')}"`);
    console.log(`Message (hex): 0x${message.toString('hex')}`);
    console.log(`Message (C): ${bufferToCArray(message)}`);
    console.log();

    // Prepare commitment list
    const commitmentList = signerData.map(signer => ({
        identifier: signer.identifier,
        hiding_nonce_commitment: signer.hiding_nonce_commitment,
        binding_nonce_commitment: signer.binding_nonce_commitment
    }));

    console.log("Commitment List:");
    for (const comm of commitmentList) {
        console.log(`  Participant ${comm.identifier}:`);
        console.log(`    Identifier: ${toHex(comm.identifier)}`);
        console.log(`    hiding_commitment:  (${toHex(comm.hiding_nonce_commitment.getX()).slice(0, 20)}..., ${toHex(comm.hiding_nonce_commitment.getY()).slice(0, 20)}...)`);
        console.log(`    binding_commitment: (${toHex(comm.binding_nonce_commitment.getX()).slice(0, 20)}..., ${toHex(comm.binding_nonce_commitment.getY()).slice(0, 20)}...)`);
    }
    console.log();

    // Compute binding factors
    const bindingFactors = compute_binding_factors(groupPubkey, commitmentList, message, curve);

    console.log("Binding Factors:");
    for (const bf of bindingFactors) {
        console.log(`  Participant ${bf.identifier}:`);
        console.log(`    binding_factor: ${toHex(bf.binding_factor)}`);
        console.log(`    binding_factor (C): ${toCArray(bf.binding_factor)}`);
    }
    console.log();

    // ========================================
    // STEP 4: Compute Group Commitment
    // ========================================
    console.log("=".repeat(80));
    console.log("STEP 4: Compute Group Commitment");
    console.log("=".repeat(80));
    console.log();

    // Compute group commitment
    const groupCommitment = compute_group_commitment(commitmentList, bindingFactors, curve);

    console.log("Group Commitment:");
    console.log(`  x: ${toHex(groupCommitment.getX())}`);
    console.log(`  x (C): ${toCArray(groupCommitment.getX())}`);
    console.log(`  y: ${toHex(groupCommitment.getY())}`);
    console.log(`  y (C): ${toCArray(groupCommitment.getY())}`);
    console.log();

    // Verify group commitment manually
    console.log("Manual Verification:");
    let manualCommitment = curve.getZero();
    for (let i = 0; i < commitmentList.length; i++) {
        const comm = commitmentList[i];
        const bf = bindingFactors[i];

        console.log(`  Participant ${comm.identifier}:`);
        console.log(`    hiding_commitment + (binding_factor * binding_commitment)`);

        const binding_contribution = comm.binding_nonce_commitment.multiply(bf.binding_factor);
        const participant_contribution = comm.hiding_nonce_commitment.add(binding_contribution);

        console.log(`    contribution.x: ${toHex(participant_contribution.getX()).slice(0, 30)}...`);

        manualCommitment = manualCommitment.add(participant_contribution);
    }

    console.log();
    console.log("Manual group commitment:");
    console.log(`  x: ${toHex(manualCommitment.getX())}`);
    console.log(`  x (C): ${toCArray(manualCommitment.getX())}`);
    console.log(`  y: ${toHex(manualCommitment.getY())}`);
    console.log(`  y (C): ${toCArray(manualCommitment.getY())}`);
    console.log();

    const commitmentMatch = groupCommitment.equals(manualCommitment);
    console.log(`Group Commitment Verification: ${commitmentMatch ? '✓ PASS' : '✗ FAIL'}`);
    console.log();

    // ========================================
    // Summary
    // ========================================
    console.log("=".repeat(80));
    console.log("SUMMARY");
    console.log("=".repeat(80));
    console.log();
    console.log(`✓ Generated ${n} secret shares with ${t}-of-${n} threshold`);
    console.log(`✓ Computed group public key via Lagrangian interpolation`);
    console.log(`✓ Selected ${signerIds.length} signers for signing session`);
    console.log(`✓ Generated nonces and commitments for each signer`);
    console.log(`✓ Computed binding factors for signature aggregation`);
    console.log(`✓ Computed group commitment from individual commitments`);
    console.log();
    console.log("All intermediate values displayed in hexadecimal.");
}

// Run the test
frostFullTest().catch(console.error);