const TransportNodeHid = require("@ledgerhq/hw-transport-node-hid").default;

const fs = require('fs');

async function SignHash() {
    console.time("");
    let transport;
    try {
        // List available devices
        const devices = await TransportNodeHid.list();
        console.log("Available devices:", devices);
        if (devices.length === 0) {
            console.log("No Ledger device found. Make sure it's connected and unlocked.");
            return;
        }

        // Connect to the first available device
        transport = await TransportNodeHid.open(devices[0]);
        console.log("Connected to Ledger Device");

        // Build APDU list for signing
        const apdus = [];

        // For the secret key and public key
        // This APDU injects <groupkey>, <identifier> and <secret_share> in the RAM of the ledger
        // E0 19 0000 length <groupkey> <identifier> <secret_share>
        //                      64B         32B            32B
        // It doesn't output anything.
        apdus.push({ name: "apdu_inject", command: "E0190000801e0762d6610a0b47f3b5e3f23f5f748fde5abb8843f33cf084c0dabd8dc813e60b82b739e78dda57e75ac680ef689df1158fe3eed8095c6d4bd1b2c7c166eefd000000000000000000000000000000000000000000000000000000000000000102881c6476eac0fc58c14b735c68c76ef3e59bc1ad40b3e45a4d5bf13657723e" });
        // This APDU computes the commitments
        // It outputs the two commitments: <x1><y1><x2><y2>
        //                                  32B 32B 32B 32B
        apdus.push({ name: "apdu_commit", command: "E01A00000102" });
        // This inject 240 bytes of commitments
        apdus.push({ name: "apdu_inject_commit_1", command: "E01B0000f000000000000000000000000000000000000000000000000000000000000000012f65decdd6b3790f866399d9103bda214127d811dbb41941bf57c02362ff725f198c9ee9b356a21604d64d1f3d262c9ed69eb64a4f634045ec5fe104b53c600c14315fda5a73b97627bc9e192139f1810bcd714251899044a1679918cf1bfd7c13c93e791d47e6867c3b79982cc3621521efd6ae6eb82258aab08abe24617688000000000000000000000000000000000000000000000000000000000000000222ea78efd92c6970b26ffa231f04407745d13c6aff18738338f5f6bb7905e2db1b1f81c620830d0df3deccce2d1773c4" });
        apdus.push({ name: "apdu_inject_commit_2", command: "E01C0000f0e8c4e6d8a3408a0cde82ef205c24ed3c100cdc9a71bae38f77de03534dbaf7db656ff658b709c792a7c6212e207c2305066dcbe67cf51ea4ecbc381ec7426067fa6b63433e1dbbdfc87dd9cba07c5f810000000000000000000000000000000000000000000000000000000000000003082b779ac93207916aa0737b4888966b99022f9dc3de58b939844a7fdd2be511031d6b9870e985e856948d02c3227824b46020a72c1abb61d4241a8b8017c1641f18d4be1762fc070d97284ee6a2dd8ed400a60d617e3e68768bcf30b6991c7d15eb5fcb5a8c94c13d3de3b0d4e448b9289ebcf2983eede76669237d7cb8306a" });
        apdus.push({ name: "apdu_inject_partial_sign", command: "E01D000020AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" });

        // Execute all signing APDUs
        for (const { name, command } of apdus) {
            console.log(`\nSending APDU (${name}):`, command);

            const apduBuffer = Buffer.from(command, "hex");
            console.time("BenchAPDU")
            try {
                const response = await transport.exchange(apduBuffer);
                const responseHex = response.toString("hex");
                console.log("Response received:", responseHex);

                const statusWord = response.slice(-2).toString("hex");
                const data = response.slice(0, -2).toString("hex");
                console.log(data);
                // console.log("Data:", data);
                // console.log("Status Word:", statusWord);

                if (statusWord === "9000") {
                    console.log("✅ APDU executed successfully");
                } else {
                    console.log("❌ Error - Status Word:", statusWord);
                }
            } catch (err) {
                console.error(`❌ Error sending APDU (${name}):`, err.message);
            }
            console.timeEnd("BenchAPDU")
        }

    } catch (error) {
        console.error("Error with Ledger transport:", error.message);
        if (error.message.includes("cannot open device")) {
            console.log("Make sure the Ledger is unlocked and not being used by another application");
        } else if (error.message.includes("No device found")) {
            console.log("Make sure the Ledger is connected via USB");
        }
    } finally {
        if (transport) {
            await transport.close();
            console.log("\nConnection closed");
        }
    }
}

// Example usage 
SignHash().catch(console.error);