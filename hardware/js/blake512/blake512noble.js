import { blake2b, blake2s } from '@noble/hashes/blake2.js';


const inputBytes = new Uint8Array([0x61, 0x62, 0x63]);
const hash = blake2b(inputBytes, { dkLen: 64 });
//expected ba80a53f981c4d0d6a2797b69f12f6e94c212f14685ac4b74b12bb6fdbffa2d17d87c5392aab792dc252d5de4533cc9518d38aa8dbf1925ab92386edd4009923
const hashHex = Array.from(hash)
  .map(b => b.toString(16).padStart(2, '0'))
  .join('');

console.log("BLAKE2b hash (hex):", hashHex);