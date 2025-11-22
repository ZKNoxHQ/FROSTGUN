// ledger-apdu.js
import TransportNodeHid from "@ledgerhq/hw-transport-node-hid";

export async function sendAPDU(apdu) {
  let transport;

  try {
    // Use TransportNodeHid.default if the import structure requires it
    const TransportImpl = TransportNodeHid.default || TransportNodeHid;

    const devices = await TransportImpl.list();
    console.log("Available devices:", devices);

    if (devices.length === 0) {
      console.log("No Ledger device found. Make sure it's connected and unlocked.");
      return { data: "", statusWord: "0000", success: false };
    }

    transport = await TransportImpl.open(devices[0]);
    console.log("Connected to Ledger Nano");

    const apduBuffer = Buffer.from(apdu, "hex");

    console.log("Sending APDU:", apdu);
    const response = await transport.exchange(apduBuffer);

    const responseHex = response.toString("hex");

    const formattedResponse = responseHex.match(/.{1,64}/g)?.join('\n') || responseHex;
    console.log("Response received:\n" + formattedResponse);

    const statusWord = response.slice(-2).toString("hex");
    const data = response.slice(0, -2).toString("hex");

    console.log("Data:", data);
    console.log("Status Word:", statusWord);

    if (statusWord === "9000") {
      console.log("✅ APDU executed successfully");
    } else {
      console.log("❌ Error - Status Word:", statusWord);
    }

    return { data, statusWord, success: statusWord === "9000" };

  } catch (error) {
    console.error("Error sending APDU:", error.message);

    if (error.message.includes("cannot open device")) {
      console.log("Make sure the Ledger is unlocked and not being used by another application");
    } else if (error.message.includes("No device found")) {
      console.log("Make sure the Ledger is connected via USB");
    }

    throw error;

  } finally {
    if (transport) {
      await transport.close();
      console.log("Connection closed");
    }
  }
}

export const APDUS = {
  apdu0: "e00800000101",
  //scalar multiplication over babyjujub
  apdu_scalarmul: "e00e00002102060c89ce5c263405370a08b6d0302b0bab3eedb83920ee0a677297dc392126f2",
  apdu_poseidoncst: "e00d00000101",
  apdu_keccakhash: "e007000003616263",
  apdu_blake512hash: "e008000003616263",
  apdu_prv2pubhash: "e00800002000a2ac13cdba830a55bf407ea70c5fd29312c17060f07d35fea5de47d6c03ed2",
  apdu_eddsa: "e00a000021020e3a053e04a8677a535d1fe931b604eda1ebcfba03d7967ad4ac5967743de424",
  apdu_eddsa_prv2pub: "e00b0000210200a2ac13cdba830a55bf407ea70c5fd29312c17060f07d35fea5de47d6c03ed2",
  apdu_appname: "e0040000",
  apdu_poseidonhash: "e00900000100",
  apdu_eddsa_sign_ok: "e00c0000410200a2ac13cdba830a55bf407ea70c5fd29312c17060f07d35fea5de47d6c03ed28c1f26718227707c6e5c61417b47daccafabca9f574c16e1521dd6a9c70d8405",
  apdu_eddsa_sign2: "e00c0000410200be1aec3e4d7c893e04a0d8928e89d9e3108a63c0935df1b61a6d8e578ad983a527970583e2e76271fc83f736c8dbb578f10816b0ee5c8a01a0e4197d7a9200",
  apdu_eddsa_sign3: "e00c00004102003b83873e66d31485730cc474c702820c33459cd0df5bf3e54e3c2f40624558078887e32aedbab3a6dd84a17e57c990cd5e5fd778fb9fba649dc3a6b396382c",//generated from eddsa_apdugencheck, expected:  R8[0]: 1a78fd582d54f4a26f1e53da11cee79266cbf1235a4fa41cfa6e59b5cb5c1ce6  R8[1]: 03c5079b4432d329830f2557e2a16abed2914512f136ed0ed0d58aee95672be1  S: 0399e569666f9e8e5a8e672490a1d9bebe58b7f0b7ef4fad4fbdbc52ffe66e0f

  apdu_interpolate2: "e010000061020296bc425ad6b8654cb41e6e7adf6808c93d4b948ced1e4057fdffaeaede481d01ce535cdf2d2c2e417545801ccea3003a9f2a44232dc6cc6bfc5d90e47a7b5e0105ea7763839ff736366c91bebdddf7ac0108f3b96e6f587ffabb731a16ae9f",//prefix+curveID(1)+secrets(96)
  apdu_split: "e01100002202030296bc425ad6b8654cb41e6e7adf6808c93d4b948ced1e4057fdffaeaede481d",///prefix+curveID(1)+nb_shares(1)+secret(32)
  bolos_bug: "e00f00000101",
  apdu_encodecommitmen: "e01300000102",//test encodecommitment function, no input, just return hash to be compared with curves-lite
  apdu_groupcommitment: "e01400000102",
  apdu_bindingfactors: "e01500000102"
};


//uncomment the apdu you want to launch

//IMPORTANT WARNING: this is used by eddsa_apdugencheck, comment it back or the automated generation will fail

//curveslite hashexample in https://github.com/Railgun-Community/curves-lite/blob/zy0n/vss-dkg/test/hashes.test.ts
//sendAPDU("e01200002102103056215bc7e90f9bbf1a4b4371b4484649a8ef98098c3326f9cb582673068a");

//curves-lite shamir sharing example as https://github.com/Railgun-Community/curves-lite/blob/ee9a954f2dfa3238baff26638526db739f5a41f6/test/babyfrost.test.ts#L8
//sendAPDU("e0100000610201d4260025e6e520d8daab9c1f9923b0c94c6ee643f051ff252651753513380401d85f8d8e472e07cf9fb432c0debae008ff241ea77f69c1d8403ffb36343cf00442308b78d3cf348e735520c35d77dfb70167d82e334d911afbd7f02497c653");

//example of eddsa poseidon sign, equivalent to eddsa poseidon sign of circomlib
//sendAPDU("e00c0000410200a2ac13cdba830a55bf407ea70c5fd29312c17060f07d35fea5de47d6c03ed28c1f26718227707c6e5c61417b47daccafabca9f574c16e1521dd6a9c70d8405");
//sendAPDU(APDUS.apdu_encodecommitmen)

//sendAPDU(APDUS.apdu_groupcommitment)
//sendAPDU(APDUS.apdu_eddsa_sign3)

sendAPDU(APDUS.apdu_bindingfactors)