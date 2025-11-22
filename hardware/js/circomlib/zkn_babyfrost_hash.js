import buildEddsa from "./eddsa_reference.js";
import crypto from "crypto";
import { blake2b } from "@noble/hashes/blake2.js";
import { Scalar } from "ffjavascript";

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

export function H1(input) {
    let hashedNonce = Scalar.fromRprLE(taggedBlake512("rho", input), 0, 64);
    const babyJubOrder = BigInt("2736030358979909402780800718157159386076813972158567259200215660948447373041");
    return Scalar.mod(hashedNonce, babyJubOrder);
}

export function H3(input) {
    let hashedNonce = Scalar.fromRprLE(taggedBlake512("nonce", input), 0, 64);
    const babyJubOrder = BigInt("2736030358979909402780800718157159386076813972158567259200215660948447373041");
    return Scalar.mod(hashedNonce, babyJubOrder);
}

export function H4(input) {
    let hashedNonce = Scalar.fromRprLE(taggedBlake512("msg", input), 0, 64);
    const babyJubOrder = BigInt("2736030358979909402780800718157159386076813972158567259200215660948447373041");
    return Scalar.mod(hashedNonce, babyJubOrder);
}

export function H5(input) {
    let hashedNonce = Scalar.fromRprLE(taggedBlake512("com", input), 0, 64);
    const babyJubOrder = BigInt("2736030358979909402780800718157159386076813972158567259200215660948447373041");
    return Scalar.mod(hashedNonce, babyJubOrder);
}

function toHex(buffer) {
    return Buffer.from(buffer).toString('hex');
}

// Test function
async function testHashFunctions() {
    console.log("=== FROST EdDSA Baby Jubjub Hash Function Test ===\n");

    // Generate random 32 bytes input
    const randomInput = crypto.randomBytes(32);
    console.log("Random 32-byte input:");
    console.log("  Hex:", toHex(randomInput));
    console.log("  Decimal:", BigInt('0x' + toHex(randomInput)).toString());
    console.log();

    // Test H1 (rho)
    console.log("H1 (tag: 'rho'):");
    const h1Raw = taggedBlake512("rho", randomInput);
    console.log("  Raw hash (64 bytes):", toHex(h1Raw));
    const h1Result = H1(randomInput);
    console.log("  Modulo subOrder:", h1Result.toString());
    console.log("  Hex:", '0x' + h1Result.toString(16));
    console.log();

    // Test H3 (nonce)
    console.log("H3 (tag: 'nonce'):");
    const h3Raw = taggedBlake512("nonce", randomInput);
    console.log("  Raw hash (64 bytes):", toHex(h3Raw));
    const h3Result = H3(randomInput);
    console.log("  Modulo subOrder:", h3Result.toString());
    console.log("  Hex:", '0x' + h3Result.toString(16));
    console.log();

    // Test H4 (msg)
    console.log("H4 (tag: 'msg'):");
    const h4Raw = taggedBlake512("msg", randomInput);
    console.log("  Raw hash (64 bytes):", toHex(h4Raw));
    const h4Result = H4(randomInput);
    console.log("  Modulo subOrder:", h4Result.toString());
    console.log("  Hex:", '0x' + h4Result.toString(16));
    console.log();

    // Test H5 (com)
    console.log("H5 (tag: 'com'):");
    const h5Raw = taggedBlake512("com", randomInput);
    console.log("  Raw hash (64 bytes):", toHex(h5Raw));
    const h5Result = H5(randomInput);
    console.log("  Modulo subOrder:", h5Result.toString());
    console.log("  Hex:", '0x' + h5Result.toString(16));
    console.log();

    // Verify that different tags produce different results
    console.log("=== Verification ===");
    console.log("All hash results are different:",
        h1Result !== h3Result &&
            h1Result !== h4Result &&
            h1Result !== h5Result &&
            h3Result !== h4Result &&
            h3Result !== h5Result &&
            h4Result !== h5Result ? "✓ PASS" : "✗ FAIL"
    );

    // Test with same tag twice to verify consistency
    const h1Again = H1(randomInput);
    console.log("H1 is deterministic:", h1Result === h1Again ? "✓ PASS" : "✗ FAIL");
}

// Run the test
testHashFunctions().catch(console.error);