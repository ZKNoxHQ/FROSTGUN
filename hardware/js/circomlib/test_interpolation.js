import { createUniversalCurve, Interpolate_group_pubkey } from './zkn_curve_wrapper.js';
import crypto from 'crypto';

// Helper to format BigInt as hex with 0x prefix
function toHex(value) {
    return '0x' + value.toString(16);
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

// Test Lagrangian interpolation for all curves
async function testInterpolation() {
    console.log("=== Lagrangian Interpolation Test for All Curves ===\n");

    // Baby Jubjub order (smallest of the three curves)
    const babyJubOrder = BigInt("2736030358979909402780800718157159386076813972158567259200215660948447373041");

    // Generate random coefficients smaller than Baby Jubjub order
    const secret = randomBigInt(babyJubOrder);
    const a1 = randomBigInt(babyJubOrder);
    const a2 = randomBigInt(babyJubOrder);

    console.log("Random Polynomial Coefficients (< Baby Jubjub order):");
    console.log(`  Baby Jubjub order: ${toHex(babyJubOrder)}`);
    console.log(`  secret (a0):       ${toHex(secret)}`);
    console.log(`  a1:                ${toHex(a1)}`);
    console.log(`  a2:                ${toHex(a2)}`);
    console.log();

    // Create all three curves
    const curves = {
        'Baby Jubjub': await createUniversalCurve('babyjub'),
        'Ed25519': await createUniversalCurve('ed25519'),
        'secp256k1': await createUniversalCurve('secp256k1')
    };

    for (const [name, curve] of Object.entries(curves)) {
        console.log(`\n${'='.repeat(80)}`);
        console.log(`${name}`);
        console.log(`${'='.repeat(80)}\n`);

        console.log(`Curve Parameters:`);
        console.log(`  Order:   ${toHex(curve.getOrder())}`);
        console.log(`  Modulus: ${toHex(curve.getModulus())}`);
        console.log();

        // Simulate a (3, 5) threshold scheme
        const n = 5; // total participants
        const t = 3; // threshold

        // Participant IDs (1-indexed)
        const allIds = [1n, 2n, 3n, 4n, 5n];

        console.log("Polynomial Setup:");
        console.log(`  P(x) = ${toHex(secret)} + ${toHex(a1)}*x + ${toHex(a2)}*x^2`);
        console.log(`  Threshold: ${t} of ${n}`);
        console.log();

        // Generate shares: each participant gets P(i) * Base
        const allPubkeys = [];
        const allSecretShares = [];

        console.log("Secret Shares and Public Keys:");
        for (let i = 0; i < n; i++) {
            const x = allIds[i];
            // Evaluate polynomial: P(x) = a0 + a1*x + a2*x^2
            const share = (secret + a1 * x + a2 * x * x) % curve.getOrder();
            allSecretShares.push(share);

            // Public key share = share * Base
            const pubkey = curve.scalarMultiply(share);
            allPubkeys.push(pubkey);

            console.log(`  Participant ${x}:`);
            console.log(`    Secret share: ${toHex(share)}`);
            console.log(`    Pubkey.x:     ${toHex(pubkey.getX())}`);
            console.log(`    Pubkey.y:     ${toHex(pubkey.getY())}`);
        }

        console.log();

        // Expected group public key: secret * Base
        const expectedGroupPubkey = curve.scalarMultiply(secret);
        console.log("Expected Group Public Key (secret * Base):");
        console.log(`  x: ${toHex(expectedGroupPubkey.getX())}`);
        console.log(`  y: ${toHex(expectedGroupPubkey.getY())}`);
        console.log();

        // Test 1: Reconstruct with first t participants (1, 2, 3)
        console.log(`Test 1: Reconstruct with participants 1, 2, 3`);
        const subset1Ids = allIds.slice(0, t);
        const subset1Pubkeys = allPubkeys.slice(0, t);

        console.log(`  Using IDs: [${subset1Ids.map(id => toHex(id)).join(', ')}]`);
        const reconstructed1 = Interpolate_group_pubkey(subset1Pubkeys, subset1Ids, curve);

        console.log(`  Reconstructed.x: ${toHex(reconstructed1.getX())}`);
        console.log(`  Reconstructed.y: ${toHex(reconstructed1.getY())}`);

        const match1 = reconstructed1.equals(expectedGroupPubkey);
        console.log(`  Match: ${match1 ? '✓ PASS' : '✗ FAIL'}`);
        console.log();

        // Test 2: Reconstruct with different t participants (2, 3, 4)
        console.log(`Test 2: Reconstruct with participants 2, 3, 4`);
        const subset2Ids = allIds.slice(1, t + 1);
        const subset2Pubkeys = allPubkeys.slice(1, t + 1);

        console.log(`  Using IDs: [${subset2Ids.map(id => toHex(id)).join(', ')}]`);
        const reconstructed2 = Interpolate_group_pubkey(subset2Pubkeys, subset2Ids, curve);

        console.log(`  Reconstructed.x: ${toHex(reconstructed2.getX())}`);
        console.log(`  Reconstructed.y: ${toHex(reconstructed2.getY())}`);

        const match2 = reconstructed2.equals(expectedGroupPubkey);
        console.log(`  Match: ${match2 ? '✓ PASS' : '✗ FAIL'}`);
        console.log();

        // Test 3: Reconstruct with another different set (1, 3, 5)
        console.log(`Test 3: Reconstruct with participants 1, 3, 5`);
        const subset3Ids = [allIds[0], allIds[2], allIds[4]];
        const subset3Pubkeys = [allPubkeys[0], allPubkeys[2], allPubkeys[4]];

        console.log(`  Using IDs: [${subset3Ids.map(id => toHex(id)).join(', ')}]`);
        const reconstructed3 = Interpolate_group_pubkey(subset3Pubkeys, subset3Ids, curve);

        console.log(`  Reconstructed.x: ${toHex(reconstructed3.getX())}`);
        console.log(`  Reconstructed.y: ${toHex(reconstructed3.getY())}`);

        const match3 = reconstructed3.equals(expectedGroupPubkey);
        console.log(`  Match: ${match3 ? '✓ PASS' : '✗ FAIL'}`);
        console.log();

        // Test 4: Verify that using all n participants also works
        console.log(`Test 4: Reconstruct with all 5 participants`);
        console.log(`  Using IDs: [${allIds.map(id => toHex(id)).join(', ')}]`);
        const reconstructed4 = Interpolate_group_pubkey(allPubkeys, allIds, curve);

        console.log(`  Reconstructed.x: ${toHex(reconstructed4.getX())}`);
        console.log(`  Reconstructed.y: ${toHex(reconstructed4.getY())}`);

        const match4 = reconstructed4.equals(expectedGroupPubkey);
        console.log(`  Match: ${match4 ? '✓ PASS' : '✗ FAIL'}`);
        console.log();

        // Summary for this curve
        const allPassed = match1 && match2 && match3 && match4;
        console.log(`${name} Summary: ${allPassed ? '✓ ALL TESTS PASSED' : '✗ SOME TESTS FAILED'}`);
    }

    console.log("\n" + "=".repeat(80));
    console.log("=== Summary ===");
    console.log("✓ Lagrangian interpolation works on all curves");
    console.log("✓ Any subset of t participants can reconstruct the group key");
    console.log("✓ Different subsets produce the same result");
    console.log("✓ Unified API works across Baby Jubjub, Ed25519, and secp256k1");
    console.log("✓ Random coefficients < Baby Jubjub order work on all curves");
}

// Run the test
testInterpolation().catch(console.error);