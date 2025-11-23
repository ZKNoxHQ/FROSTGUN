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
        apdus.push({ name: "apdu_inject", command: "E019000080AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0b8a9785cfeab4d367712d4e0faf97355e8c4ec61cb32df9a445d671e1503e5b" });
        // This APDU computes the commitments
        // It outputs the two commitments: <x1><y1><x2><y2>
        //                                  32B 32B 32B 32B
        apdus.push({ name: "apdu_commit", command: "E01A00000102" });

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