import assert from "assert";
import { getCurveFromName } from "ffjavascript";
import poseidonConstants from "./poseidon_constants.js";

function unsringifyConstants(Fr, o) {
    if ((typeof (o) == "string") && (/^[0-9]+$/.test(o))) {
        return Fr.e(o);
    } else if ((typeof (o) == "string") && (/^0x[0-9a-fA-F]+$/.test(o))) {
        return Fr.e(o);
    } else if (Array.isArray(o)) {
        return o.map(unsringifyConstants.bind(null, Fr));
    } else if (typeof o == "object") {
        if (o === null) return null;
        const res = {};
        const keys = Object.keys(o);
        keys.forEach((k) => {
            res[k] = unsringifyConstants(Fr, o[k]);
        });
        return res;
    } else {
        return o;
    }
}

function toHex(F, value) {
    return "0x" + BigInt(F.toString(value)).toString(16).padStart(64, '0');
}

export default async function buildPoseidon() {
    const bn128 = await getCurveFromName("bn128", true);

    const F = bn128.Fr;

    const { C, M } = unsringifyConstants(F, poseidonConstants);

    const N_ROUNDS_F = 8;
    const N_ROUNDS_P = [56, 57, 56, 60, 60, 63, 64, 63, 60, 66, 60, 65, 70, 60, 64, 68];

    const pow5 = a => F.mul(a, F.square(F.square(a, a)));

    function poseidon(inputs, initState, nOut, debug = false) {
        assert(inputs.length > 0);
        assert(inputs.length <= N_ROUNDS_P.length);

        const t = inputs.length + 1;
        const nRoundsF = N_ROUNDS_F;
        const nRoundsP = N_ROUNDS_P[t - 2];

        if (initState) {
            initState = F.e(initState);
        } else {
            initState = F.zero;
        }
        nOut = nOut || 1;

        let state = [initState, ...inputs.map(a => F.e(a))];

        if (debug) {
            console.log("\n=== Poseidon Hash Computation ===");
            console.log(`t = ${t}, nRoundsF = ${nRoundsF}, nRoundsP = ${nRoundsP}`);
            console.log(`Total rounds: ${nRoundsF + nRoundsP}`);
            console.log("\nInitial state:");
            state.forEach((s, i) => console.log(`  state[${i}]: ${toHex(F, s)}`));
            console.log();
        }

        for (let r = 0; r < nRoundsF + nRoundsP; r++) {
            if (debug) console.log(`--- Round ${r} ---`);

            // Add round constants
            state = state.map((a, i) => F.add(a, C[t - 2][r * t + i]));

            if (debug) {
                console.log("After adding constants:");
                state.forEach((s, i) => console.log(`  state[${i}]: ${toHex(F, s)}`));
            }

            // S-box layer
            if (r < nRoundsF / 2 || r >= nRoundsF / 2 + nRoundsP) {
                // Full rounds
                state = state.map(a => pow5(a));
                if (debug) {
                    console.log("After full S-box (pow5 on all):");
                    state.forEach((s, i) => console.log(`  state[${i}]: ${toHex(F, s)}`));
                }
            } else {
                // Partial rounds
                state[0] = pow5(state[0]);
                if (debug) {
                    console.log("After partial S-box (pow5 on state[0] only):");
                    state.forEach((s, i) => console.log(`  state[${i}]: ${toHex(F, s)}`));
                }
            }

            // MDS matrix multiplication
            state = state.map((_, i) =>
                state.reduce((acc, a, j) => F.add(acc, F.mul(M[t - 2][i][j], a)), F.zero)
            );

            if (debug) {
                console.log("After MDS matrix:");
                state.forEach((s, i) => console.log(`  state[${i}]: ${toHex(F, s)}`));
                console.log();
            }
        }

        if (debug) {
            console.log("=== Final State ===");
            state.forEach((s, i) => console.log(`  state[${i}]: ${toHex(F, s)}`));
            console.log();
        }

        if (nOut == 1) {
            return state[0];
        } else {
            return state.slice(0, nOut);
        }
    }

    poseidon.F = F;
    return poseidon;
}