import buildEddsa from "./eddsa_reference.js";
import crypto from "crypto";
import { sendAPDU } from "../ledger-apdu.js";

const toHexString = bytes =>
  bytes.reduce((str, byte) => str + byte.toString(16).padStart(2, '0'), '');

const bigIntToArray = (value, length) => {
  const hex = value.toString(16).padStart(length * 2, '0');
  return new Uint8Array(hex.match(/.{2}/g).map(byte => parseInt(byte, 16)));
};

// Generate private key with MSB < 0x03
const generatePrivateKey = () => {
  let privateKey;
  do {
    privateKey = crypto.randomBytes(32);
  } while (privateKey[0] >= 0x03);
  return privateKey;
};

function ledger_eddsaSignPoseidon(privateKey, montgomeryBytes) {
  // Ensure inputs are in hex string format
  const pkHex = typeof privateKey === 'string' ? privateKey : toHexString(privateKey);
  const miHex = typeof montgomeryBytes === 'string' ? montgomeryBytes : toHexString(montgomeryBytes);

  // Concatenate the header with private key and montgomery intermediate
  const apdu = "e00c00004102" + pkHex + miHex;

  // Print with APDU prefix
  console.log("APDU: " + apdu);

  return apdu;
}


async function runEddsaTest() {
  const eddsa = await buildEddsa();
  const F = eddsa.F;

  console.log("=== EdDSA Poseidon Complete Test ===\n");

  // Step 1: Key Generation
  console.log("Step 1: Key Generation");
  console.log("─".repeat(80));
  const privateKey = generatePrivateKey();
  console.log("Private key:", toHexString(privateKey));
  console.log("Private key MSB:", `0x${privateKey[0].toString(16).padStart(2, '0')}`, "(< 0x03)");

  const publicKey = eddsa.prv2pub(privateKey).map(element =>
    F.fromMontgomery(element).reverse()
  );
  console.log("Public key X:", toHexString(publicKey[0]));
  console.log("Public key Y:", toHexString(publicKey[1]));
  console.log();

  // Step 2: Message and Signing
  console.log("Step 2: Signing");
  console.log("─".repeat(80));
  const message = crypto.randomBytes(32);
  console.log("Message:", toHexString(message));

  // Convert message to Montgomery representation
  const montgomery = F.toMontgomery(new Uint8Array(message).reverse());
  const montgomeryBytes = F.fromMontgomery(montgomery);

  console.log("Montgomery (hex):", toHexString(montgomeryBytes));

  // Print APDU with private key and montgomery intermediate
  const apdu = ledger_eddsaSignPoseidon(privateKey, montgomeryBytes);
  console.log();

  // Send APDU to Ledger device
  console.log("Sending APDU to Ledger device...");
  console.log("─".repeat(80));
  let ledgerSignature = null;
  try {
    const ledgerResponse = await sendAPDU(apdu);

    console.log("\nLedger Response Summary:");
    console.log("  Success:", ledgerResponse.success ? "✓" : "✗");
    console.log("  Status:", ledgerResponse.statusWord);
    console.log("  Data length:", ledgerResponse.data.length / 2, "bytes");

    if (ledgerResponse.success && ledgerResponse.data.length === 192) {
      // Parse the 96 bytes response: R8[0] (32 bytes) + R8[1] (32 bytes) + S (32 bytes)
      ledgerSignature = {
        r8_0: ledgerResponse.data.substring(0, 64),
        r8_1: ledgerResponse.data.substring(64, 128),
        s: ledgerResponse.data.substring(128, 192)
      };
      console.log("\nLedger Signature:");
      console.log("  R8[0]:", ledgerSignature.r8_0);
      console.log("  R8[1]:", ledgerSignature.r8_1);
      console.log("  S:", ledgerSignature.s);
    }
    console.log();
  } catch (error) {
    console.log("⚠️  Could not send to Ledger device:", error.message);
    console.log("Continuing with software-only test...\n");
  }

  // Sign with debug output
  const signature = eddsa.signPoseidon(privateKey, montgomery, true);

  // Convert signature to readable format
  const r8 = signature.R8.map(element => F.fromMontgomery(element).reverse());
  const s = bigIntToArray(signature.S, 32);

  console.log("\nSoftware Signature (readable format):");
  console.log("  R8[0]:", toHexString(r8[0]));
  console.log("  R8[1]:", toHexString(r8[1]));
  console.log("  S:", toHexString(s));
  console.log();

  // Compare Ledger and Software signatures
  if (ledgerSignature) {
    console.log("Step 2.5: Signature Comparison (Ledger vs Software)");
    console.log("─".repeat(80));

    const softwareR8_0 = toHexString(r8[0]);
    const softwareR8_1 = toHexString(r8[1]);
    const softwareS = toHexString(s);

    const r8_0_match = ledgerSignature.r8_0 === softwareR8_0;
    const r8_1_match = ledgerSignature.r8_1 === softwareR8_1;
    const s_match = ledgerSignature.s === softwareS;

    console.log("R8[0] match:", r8_0_match ? "✓ PASS" : "✗ FAIL");
    if (!r8_0_match) {
      console.log("  Ledger:  ", ledgerSignature.r8_0);
      console.log("  Software:", softwareR8_0);
    }

    console.log("R8[1] match:", r8_1_match ? "✓ PASS" : "✗ FAIL");
    if (!r8_1_match) {
      console.log("  Ledger:  ", ledgerSignature.r8_1);
      console.log("  Software:", softwareR8_1);
    }

    console.log("S match:", s_match ? "✓ PASS" : "✗ FAIL");
    if (!s_match) {
      console.log("  Ledger:  ", ledgerSignature.s);
      console.log("  Software:", softwareS);
    }

    const allMatch = r8_0_match && r8_1_match && s_match;
    console.log("\nOverall signature match:", allMatch ? "✓ PASS" : "✗ FAIL");
    console.log();
  }

  // Step 3: Verification
  console.log("Step 3: Verification");
  console.log("─".repeat(80));
  const verified = eddsa.verifyPoseidon(montgomery, signature, eddsa.prv2pub(privateKey));
  console.log("Verification result:", verified ? "✓ PASS" : "✗ FAIL");
  console.log();

  // Step 4: Pack and Unpack Signature
  console.log("Step 4: Pack/Unpack Signature");
  console.log("─".repeat(80));
  const packedSignature = eddsa.packSignature(signature);
  console.log("Packed signature:", toHexString(packedSignature));
  console.log("Packed signature length:", packedSignature.length, "bytes");

  const unpackedSignature = eddsa.unpackSignature(packedSignature);
  const verifiedUnpacked = eddsa.verifyPoseidon(montgomery, unpackedSignature, eddsa.prv2pub(privateKey));
  console.log("Unpacked signature verification:", verifiedUnpacked ? "✓ PASS" : "✗ FAIL");
  console.log();

  console.log("=".repeat(80));
  console.log(verified && verifiedUnpacked ? "✓ All tests passed!" : "✗ Some tests failed!");
}

runEddsaTest().catch(console.error);