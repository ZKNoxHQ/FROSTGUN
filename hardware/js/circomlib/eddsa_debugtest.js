import buildEddsa from "./eddsa_reference.js";
import crypto from "crypto";

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

  // Sign with debug output
  const signature = eddsa.signPoseidon(privateKey, montgomery, true);

  // Convert signature to readable format
  const r8 = signature.R8.map(element => F.fromMontgomery(element).reverse());
  const s = bigIntToArray(signature.S, 32);

  console.log("\nSignature (readable format):");
  console.log("  R8[0]:", toHexString(r8[0]));
  console.log("  R8[1]:", toHexString(r8[1]));
  console.log("  S:", toHexString(s));
  console.log();

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