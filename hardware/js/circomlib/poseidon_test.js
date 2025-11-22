import { buildPoseidonOpt } from "circomlibjs";

async function runPoseidonTest() {
    console.log("Building Poseidon...\n");
    const poseidon = await buildPoseidonOpt();
    const F = poseidon.F;

    console.log("=== Poseidon Hash Test: Multiple Outputs ===\n");

    const inputs = [1, 2, 0, 0, 0];
    const initState = 0;
    const nOut = 3;
    const expected = [
        "1018317224307729531995786483840663576608797660851238720571059489595066344487",
        "1268987460374965117190107941866588409937190018195924754936306024116268626868",
        "8783366202813713093021184624438037804022412226788318946130389248546914776762"
    ];

    console.log("Inputs:", inputs);
    console.log("Init State:", initState);
    console.log("Number of Outputs:", nOut);
    console.log();

    const result = poseidon(inputs, initState, nOut);

    console.log("Results:");
    for (let i = 0; i < nOut; i++) {
        const match = F.eq(result[i], F.e(expected[i]));
        console.log(`\nOutput ${i}:`);
        console.log(`  Result:   ${F.toString(result[i])}`);
        console.log(`  Expected: ${expected[i]}`);
        console.log(`  Match: ${match ? "✓" : "✗"}`);
    }

    const allMatch = result.every((r, i) => F.eq(r, F.e(expected[i])));
    console.log(`\nAll outputs match: ${allMatch ? "✓" : "✗"}`);

    const result2 = poseidon(inputs, initState, 1);
    console.log(`  Result2:   ${F.toString(result2)}`);

}

runPoseidonTest().catch(console.error);