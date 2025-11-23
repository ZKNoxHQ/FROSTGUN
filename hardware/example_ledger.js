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
  // OLD APDU, AVAILABLE FOR TEST
  apdu_partialsig: "e00200000102",
  apdu_eddsa_sign_with_insecure_secret: "E017000021026162636461626364616263646162636461626364616263646162636461626364",
  apdu_get_insecure_public: "E01800000102",
  // FROST APDU
  apdu_inject_frost: "E0190000801e0762d6610a0b47f3b5e3f23f5f748fde5abb8843f33cf084c0dabd8dc813e60b82b739e78dda57e75ac680ef689df1158fe3eed8095c6d4bd1b2c7c166eefd000000000000000000000000000000000000000000000000000000000000000102881c6476eac0fc58c14b735c68c76ef3e59bc1ad40b3e45a4d5bf13657723e",
  apdu_frost_commit: "e01a00000102",
  apdu_inject_nonces: "E02000004000d646b7eddea51883d0883f6449da2da09fc3c7f4530a496d6929ee649b4c7f04712fde821713e76d025dfde4bd8c2cf368027ac134757083397bc5f11660fc",
  apdu_inject_com1: "E01B0000f000000000000000000000000000000000000000000000000000000000000000012f65decdd6b3790f866399d9103bda214127d811dbb41941bf57c02362ff725f198c9ee9b356a21604d64d1f3d262c9ed69eb64a4f634045ec5fe104b53c600c14315fda5a73b97627bc9e192139f1810bcd714251899044a1679918cf1bfd7c13c93e791d47e6867c3b79982cc3621521efd6ae6eb82258aab08abe24617688000000000000000000000000000000000000000000000000000000000000000222ea78efd92c6970b26ffa231f04407745d13c6aff18738338f5f6bb7905e2db1b1f81c620830d0df3deccce2d1773c4",
  apdu_inject_com2: "E01C0000f0e8c4e6d8a3408a0cde82ef205c24ed3c100cdc9a71bae38f77de03534dbaf7db656ff658b709c792a7c6212e207c2305066dcbe67cf51ea4ecbc381ec7426067fa6b63433e1dbbdfc87dd9cba07c5f810000000000000000000000000000000000000000000000000000000000000003082b779ac93207916aa0737b4888966b99022f9dc3de58b939844a7fdd2be511031d6b9870e985e856948d02c3227824b46020a72c1abb61d4241a8b8017c1641f18d4be1762fc070d97284ee6a2dd8ed400a60d617e3e68768bcf30b6991c7d15eb5fcb5a8c94c13d3de3b0d4e448b9289ebcf2983eede76669237d7cb8306a",
  apdu_partial_sign: "E01D0000200165c4d55f4417b368e95a54001a30323cb04fe8343e5ad484452363a598d059"
};


//uncomment the apdu you want to launch

//IMPORTANT WARNING: this is used by eddsa_apdugencheck, comment it back or the automated generation will fail
// sendAPDU(APDUS.apdu_inject_frost)
// // for debugging, we cheat and inject nonces, no commit for now ;-)
// sendAPDU(APDUS.apdu_inject_nonces)
// // sendAPDU(APDUS.apdu_frost_commit)
// sendAPDU(APDUS.apdu_inject_com1)
// sendAPDU(APDUS.apdu_inject_com2)
sendAPDU(APDUS.apdu_partial_sign)
// // expected signature: 0x52c3e9a5c257a449fa8e11d04aa2d887519b504868f72e6f1de29c33e21dbf4 