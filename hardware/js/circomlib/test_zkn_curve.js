import { createUniversalCurve } from './zkn_curve_wrapper.js';

// Test function to verify curve order property
async function testCurveOrder() {
    console.log("=== ZKN Curve Order Verification Test ===\n");
    console.log("Testing that Base * (order + 1) = Base for all curves\n");

    // Create all three curves
    const curves = {
        'Baby Jubjub': await createUniversalCurve('babyjub'),
        'Ed25519': await createUniversalCurve('ed25519'),
        'secp256k1': await createUniversalCurve('secp256k1')
    };

    for (const [name, curve] of Object.entries(curves)) {
        console.log(`${name}:`);
        console.log("─".repeat(60));

        // Get order and modulus
        const order = curve.getOrder();
        const modulus = curve.getModulus();

        console.log(`  Order (n):    ${order.toString()}`);
        console.log(`  Modulus (p):  ${modulus.toString()}`);
        console.log(`  Order hex:    0x${order.toString(16)}`);
        console.log(`  Modulus hex:  0x${modulus.toString(16)}`);

        // Get base point
        const base = curve.getBase();
        console.log(`\n  Base point:`);
        console.log(`    x: ${base.getX().toString().slice(0, 50)}...`);
        console.log(`    y: ${base.getY().toString().slice(0, 50)}...`);

        // Test: Base * order should equal identity (zero point)
        console.log(`\n  Test 1: Base * order = Zero?`);
        const baseTimesOrder = base.multiply(order);
        const zero = curve.getZero();
        const test1Pass = baseTimesOrder.equals(zero);
        console.log(`    Result: ${test1Pass ? '✓ PASS' : '✗ FAIL'}`);
        if (!test1Pass) {
            console.log(`    Base * order:`);
            console.log(`      x: ${baseTimesOrder.getX().toString()}`);
            console.log(`      y: ${baseTimesOrder.getY().toString()}`);
        }

        // Test: Base * (order + 1) should equal Base
        console.log(`\n  Test 2: Base * (order + 1) = Base?`);
        const baseTimesOrderPlus1 = base.multiply(order + 1n);
        const test2Pass = baseTimesOrderPlus1.equals(base);
        console.log(`    Result: ${test2Pass ? '✓ PASS' : '✗ FAIL'}`);
        if (!test2Pass) {
            console.log(`    Base * (order + 1):`);
            console.log(`      x: ${baseTimesOrderPlus1.getX().toString()}`);
            console.log(`      y: ${baseTimesOrderPlus1.getY().toString()}`);
            console.log(`    Expected (Base):`);
            console.log(`      x: ${base.getX().toString()}`);
            console.log(`      y: ${base.getY().toString()}`);
        }

        // Test: Base * 2 * order should also equal Zero
        console.log(`\n  Test 3: Base * (2 * order) = Zero?`);
        const baseTimes2Order = base.multiply(2n * order);
        const test3Pass = baseTimes2Order.equals(zero);
        console.log(`    Result: ${test3Pass ? '✓ PASS' : '✗ FAIL'}`);

        // Test: Base * (order - 1) + Base = Zero
        console.log(`\n  Test 4: Base * (order - 1) + Base = Zero?`);
        const baseTimesOrderMinus1 = base.multiply(order - 1n);
        const sum = baseTimesOrderMinus1.add(base);
        const test4Pass = sum.equals(zero);
        console.log(`    Result: ${test4Pass ? '✓ PASS' : '✗ FAIL'}`);

        console.log("\n");
    }
}

// Comprehensive curve API demonstration
async function demonstrateCurveAPI() {
    console.log("\n=== ZKN Curve API Demonstration ===\n");

    const curves = {
        'Baby Jubjub': await createUniversalCurve('babyjub'),
        'Ed25519': await createUniversalCurve('ed25519'),
        'secp256k1': await createUniversalCurve('secp256k1')
    };

    const scalar = 12345n;

    // ============================================
    // Scalar Multiplication
    // ============================================
    console.log("1. Scalar Multiplication:");
    console.log(`   Computing ${scalar} * Base\n`);

    for (const [name, curve] of Object.entries(curves)) {
        const result = curve.scalarMultiply(scalar);
        console.log(`   ${name}:`);
        console.log(`     x: ${result.getX().toString().slice(0, 40)}...`);
        console.log(`     y: ${result.getY().toString().slice(0, 40)}...`);
    }
    console.log();

    // ============================================
    // Point Addition
    // ============================================
    console.log("2. Point Addition:");
    console.log("   Computing Base + Base\n");

    for (const [name, curve] of Object.entries(curves)) {
        const base = curve.getBase();
        const doubled = base.add(base);
        console.log(`   ${name}:`);
        console.log(`     x: ${doubled.getX().toString().slice(0, 40)}...`);
    }
    console.log();

    // ============================================
    // Identity Element
    // ============================================
    console.log("3. Identity/Zero Point:");
    console.log("   Verifying Base + Zero = Base\n");

    for (const [name, curve] of Object.entries(curves)) {
        const zero = curve.getZero();
        const base = curve.getBase();
        const result = base.add(zero);
        const isValid = base.equals(result);
        console.log(`   ${name}: ${isValid ? '✓ PASS' : '✗ FAIL'}`);
    }
    console.log();

    // ============================================
    // Negation
    // ============================================
    console.log("4. Point Negation:");
    console.log("   Verifying Base + (-Base) = Zero\n");

    for (const [name, curve] of Object.entries(curves)) {
        const base = curve.getBase();
        const negBase = base.negate();
        const shouldBeZero = base.add(negBase);
        const zero = curve.getZero();
        const isValid = shouldBeZero.equals(zero);
        console.log(`   ${name}: ${isValid ? '✓ PASS' : '✗ FAIL'}`);
    }
    console.log();

    // ============================================
    // Summary
    // ============================================
    console.log("=== Summary ===");
    console.log("✓ All curves use identical API");
    console.log("✓ Methods: .scalarMultiply(), .scalarMultiplyPoint()");
    console.log("✓ Point ops: .multiply(), .add(), .negate(), .equals()");
    console.log("✓ Accessors: .getX(), .getY(), .getOrder(), .getModulus()");
    console.log("✓ Write once, works for ALL curves!");
}

// Run all tests
async function runAllTests() {
    await testCurveOrder();
    await demonstrateCurveAPI();
}

runAllTests().catch(console.error);