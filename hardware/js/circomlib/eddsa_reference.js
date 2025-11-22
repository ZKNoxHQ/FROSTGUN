import { blake2b } from "@noble/hashes/blake2.js";
import { Scalar } from "ffjavascript";
import { buildBabyjub as buildBabyJub } from "circomlibjs";
import { buildPoseidon } from "circomlibjs";

function toHex(value) {
    if (typeof value === 'bigint' || typeof value === 'number') {
        return "0x" + BigInt(value).toString(16).padStart(64, '0');
    }
    if (value instanceof Uint8Array) {
        return "0x" + Array.from(value).map(b => b.toString(16).padStart(2, '0')).join('');
    }
    return value.toString();
}

// Tagged Blake512 hash for FROST EdDSA Baby Jubjub
function taggedBlake512(tag, input) {
    const prefix = "FROST-EDBABYJUJUB-BLAKE512-v1";

    // Convert strings to buffers if needed
    const prefixBuf = Buffer.from(prefix, 'utf8');
    const tagBuf = Buffer.from(tag, 'utf8');
    const inputBuf = Buffer.isBuffer(input) ? input : Buffer.from(input);

    // Concatenate: prefix + tag + input
    const combined = Buffer.concat([prefixBuf, tagBuf, inputBuf]);

    return blake2b(combined, { dkLen: 64 });
}

// Blake512 using blake2b with 64-byte output
function blake512(input) {
    return blake2b(input, { dkLen: 64 });
}


export default async function buildEddsa() {
    const babyJub = await buildBabyJub("bn128");
    const poseidon = await buildPoseidon();
    return new Eddsa(babyJub, poseidon);
}

class Eddsa {

    constructor(babyJub, poseidon) {
        this.babyJub = babyJub;
        this.poseidon = poseidon;
        this.F = babyJub.F;
    }

    pruneBuffer(buff) {
        buff[0] = buff[0] & 0xF8;
        buff[31] = buff[31] & 0x7F;
        buff[31] = buff[31] | 0x40;
        return buff;
    }

    prv2pub(prv) {
        const F = this.babyJub.F;
        const sBuff = this.pruneBuffer(blake512(Buffer.from(prv)));
        let s = Scalar.fromRprLE(sBuff, 0, 32);
        const A = this.babyJub.mulPointEscalar(this.babyJub.Base8, Scalar.shr(s, 3));
        return A;
    }

    signPoseidon(prv, msg, debug = false) {
        const F = this.babyJub.F;

        if (debug) console.log("\n=== EdDSA Poseidon Signature Generation ===");
        if (debug) console.log("Private key:", toHex(prv));

        const sBuff = this.pruneBuffer(blake512(Buffer.from(prv)));
        if (debug) console.log("\nStep 1: BLAKE512 hash and prune");
        if (debug) console.log("  sBuff (pruned):", toHex(sBuff));

        const s = Scalar.fromRprLE(sBuff, 0, 32);
        if (debug) console.log("\nStep 2: Derive scalar s");
        if (debug) console.log("  s:", toHex(s));
        if (debug) console.log("\nStep 2.1: Derive scalar s, shr3");
        if (debug) console.log("  s:", toHex(Scalar.shr(s, 3)));

        const A = this.babyJub.mulPointEscalar(this.babyJub.Base8, Scalar.shr(s, 3));
        if (debug) console.log("\nStep 3: Compute public key A");
        if (debug) console.log("  A[0]:", toHex(F.toObject(A[0])));
        if (debug) console.log("  A[1]:", toHex(F.toObject(A[1])));

        const composeBuff = new Uint8Array(32 + msg.length);
        composeBuff.set(sBuff.slice(32), 0);
        F.toRprLE(composeBuff, 32, msg);
        if (debug) console.log("\nStep 4: Compose buffer for r");
        if (debug) console.log("  composeBuff:", toHex(composeBuff));

        const rBuff = blake512(Buffer.from(composeBuff));
        let r = Scalar.mod(Scalar.fromRprLE(rBuff, 0, 64), this.babyJub.subOrder);
        if (debug) console.log("\nStep 5: Compute r");
        if (debug) console.log("  rBuff:", toHex(rBuff));
        if (debug) console.log("  r (mod subOrder):", toHex(r));

        const R8 = this.babyJub.mulPointEscalar(this.babyJub.Base8, r);
        if (debug) console.log("\nStep 6: Compute R8 = Base8 * r");
        if (debug) console.log("  R8[0]:", toHex(F.toObject(R8[0])));
        if (debug) console.log("  R8[1]:", toHex(F.toObject(R8[1])));

        if (debug) console.log("\nStep 7: Compute Poseidon hash");
        if (debug) console.log("  Inputs to Poseidon:");
        if (debug) console.log("    R8[0]:", toHex(F.toObject(R8[0])));
        if (debug) console.log("    R8[1]:", toHex(F.toObject(R8[1])));
        if (debug) console.log("    A[0]:", toHex(F.toObject(A[0])));
        if (debug) console.log("    A[1]:", toHex(F.toObject(A[1])));
        if (debug) console.log("    msg:", toHex(F.toObject(msg)));

        const hm = this.poseidon([R8[0], R8[1], A[0], A[1], msg]);
        const hms = Scalar.e(this.babyJub.F.toObject(hm));
        if (debug) console.log("  Poseidon hash (hm):", toHex(F.toObject(hm)));
        if (debug) console.log("  hms (as scalar):", toHex(hms));

        const S = Scalar.mod(
            Scalar.add(
                r,
                Scalar.mul(hms, s)
            ),
            this.babyJub.subOrder
        );
        if (debug) console.log("\nStep 8: Compute S = r + hms * s (mod subOrder)");
        if (debug) console.log("  hms * s:", toHex(Scalar.mul(hms, s)));
        if (debug) console.log("  r + hms * s:", toHex(Scalar.add(r, Scalar.mul(hms, s))));
        if (debug) console.log("  S (final):", toHex(S));

        if (debug) console.log("\n=== Signature Complete ===\n");

        return {
            R8: R8,
            S: S
        };
    }

    verifyPoseidon(msg, sig, A) {
        if (typeof sig != "object") return false;
        if (!Array.isArray(sig.R8)) return false;
        if (sig.R8.length != 2) return false;
        if (!this.babyJub.inCurve(sig.R8)) return false;
        if (!Array.isArray(A)) return false;
        if (A.length != 2) return false;
        if (!this.babyJub.inCurve(A)) return false;
        if (sig.S >= this.babyJub.subOrder) return false;

        const hm = this.poseidon([sig.R8[0], sig.R8[1], A[0], A[1], msg]);
        const hms = Scalar.e(this.babyJub.F.toObject(hm));

        const Pleft = this.babyJub.mulPointEscalar(this.babyJub.Base8, sig.S);
        let Pright = this.babyJub.mulPointEscalar(A, Scalar.mul(hms, 8));
        Pright = this.babyJub.addPoint(sig.R8, Pright);

        if (!this.babyJub.F.eq(Pleft[0], Pright[0])) return false;
        if (!this.babyJub.F.eq(Pleft[1], Pright[1])) return false;
        return true;
    }

    packSignature(sig) {
        const buff = new Uint8Array(64);
        const R8p = this.babyJub.packPoint(sig.R8);
        buff.set(R8p, 0)
        const Sp = Scalar.toRprLE(buff, 32, sig.S, 32);
        return buff;
    }

    unpackSignature(sigBuff) {
        return {
            R8: this.babyJub.unpackPoint(sigBuff.slice(0, 32)),
            S: Scalar.fromRprLE(sigBuff, 32, 32)
        };
    }
}