import { buildEddsa } from "circomlibjs";
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
  } while (privateKey[0] >= 0x03); // Keep generating until MSB < 0x03
  return privateKey;
};

// Main execution function
async function runTests() {
  const eddsa = await buildEddsa();

  console.log("Running EdDSA Poseidon test...\n");

  // Test: Sign using Poseidon
  console.log("Test: Sign (using Poseidon)");

  const privateKey = generatePrivateKey();
  const message = crypto.randomBytes(32);

  console.log("Private key:", toHexString(privateKey));
  console.log("Private key MSB:", `0x${privateKey[0].toString(16).padStart(2, '0')}`, "(< 0x03 ✓)");
  console.log("Message:", toHexString(message));

  // Get public key
  const publicKey = eddsa.prv2pub(privateKey).map(element =>
    eddsa.F.fromMontgomery(element).reverse()
  );

  console.log("Public key X:", toHexString(publicKey[0]));
  console.log("Public key Y:", toHexString(publicKey[1]));

  // Convert message to Montgomery representation (reverse endianness)
  const montgomery = eddsa.F.toMontgomery(new Uint8Array(message).reverse());

  // Sign
  const sig = eddsa.signPoseidon(privateKey, montgomery);

  // Convert R8 elements from Montgomery and to big endian
  const r8 = sig.R8.map(element => eddsa.F.fromMontgomery(element).reverse());
  const s = bigIntToArray(sig.S, 32);

  console.log("\nSignature:");
  console.log("  R8[0]:", toHexString(r8[0]));
  console.log("  R8[1]:", toHexString(r8[1]));
  console.log("  S:", toHexString(s));

  // Verify
  const verified = eddsa.verifyPoseidon(montgomery, sig, eddsa.prv2pub(privateKey));
  console.log("\nVerified:", verified);

  if (verified) {
    console.log("\n✓ EdDSA Poseidon signature test passed!");
  }
}

runTests().catch(console.error);