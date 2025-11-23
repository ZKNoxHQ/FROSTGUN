# FROST Hardware Implementation - Baby Jubjub EdDSA

A hardware-secured implementation of FROST (Flexible Round-Optimized Schnorr Threshold) signatures on Ledger devices using Baby Jubjub curve with EdDSA Poseidon signatures.

![alt text](image.png)

## 🎯 Hackathon Project

This project implements [RFC 9591 (FROST)](https://datatracker.ietf.org/doc/rfc9591/) on Ledger Nano hardware wallets, enabling threshold signature schemes with hardware-level security guarantees. Perfect for multi-party computation (MPC) scenarios where you need **k-of-n** signatures with keys that never leave the secure element.

## ✨ Features

- **Hardware Security**: Private keys never leave the Ledger secure element
- **RFC 9591 Compliant**: Full implementation of FROST protocol
- **Baby Jubjub Curve**: EdDSA signatures with Poseidon hash for ZK-friendly operations
- **Memory Optimized**: Designed for Ledger Nano's constrained environment
- **JavaScript Integration**: Complete TypeScript/JavaScript library for coordinator operations

## 🏗️ Architecture

### Ledger Device (Signer)
Handles security-critical operations in the secure element:
- Nonce generation with hardware RNG
- Signing commitment computation
- Partial signature generation
- Lagrange coefficient derivation

### JavaScript Library (Coordinator)
Manages the orchestration and non-sensitive computations:
- Commitment list aggregation
- Binding factor computation  
- Challenge generation
- Signature aggregation
- Share verification

## 📦 Components

### Hardware Implementation (`/ledger`)
- **Language**: C with ARM assembly optimizations, compiled to the provided ELF
- **Target**: Ledger Nano S/S Plus/X
- **Key Features**:
  - Memory-efficient elliptic curve operations
  - Hardware-backed nonce generation
  - Poseidon hash implementation in Montgomery domain
  - APDU command interface

APDU are dscribed in /hardware/README.md current status of implementation is:


| Command | Hex  | Name | Description | Status | Notes |
|---------|------|------|-------------|--------|-------|
| 0x19 | `0x19` | FROST_INJECT_KEYS | Inject group key, identifier, and secret key | ✅ Implemented | Tested and working |
| 0x1A | `0x1A` | FROST_COMMIT | Generate nonces and return commitments | ✅ Implemented | Tested and working |
| 0x1B | `0x1B` | FROST_INJECT_COMMITMENTS_PART1 | Inject first 240 bytes of commitment list | ⏳ Pending | Not yet implemented |
| 0x1C | `0x1C` | FROST_INJECT_COMMITMENTS_PART2 | Inject remaining commitment list bytes | ⏳ Pending | Not yet implemented |
| 0x1D | `0x1D` | FROST_PARTIAL_SIGN | Compute partial signature | ⏳ Pending | static test ok |
| 0x1E | `0x1E` | FROST_RESET | Clear all protocol state | ⏳ Pending | Not yet implemented |
| 0x1F | `0x1F` | FROST_GET_STATUS | Query protocol state machine | ⏳ Pending | Not yet implemented |

### JavaScript/TypeScript Library (`/js`)
- **Framework**: TypeScript with ES modules
- **Dependencies**: 
  - `@ledgerhq/hw-transport` for device communication
  - `circomlibjs` and 'zkkit' for reference cryptographic operations


## 🚀 Quick Start

### Prerequisites
```bash
# Install Ledger development tools
pip install ledgerblue

# Install Node.js dependencies
npm install
```

### Sideload Ledger App


### Run JavaScript Example


## 🔬 Implementation Details


### Memory Optimization
Special techniques for Ledger's limited RAM:
- Partial curve structure destruction during Poseidon operations
- Montgomery domain arithmetic to avoid conversions
- Streamed APDU responses for large data transfers
- On the flow computations of Poseidon tables



## 🔐 Security Considerations

- **Nonce Security**: Hardware RNG with proper per-signature uniqueness
- **Memory Safety**: Bounds checking on all buffer operations
- **Key Isolation**: Private key shares never exported from secure element

Remaining work (why you shouldn't use this in prod)

- **Side-Channel Resistance**: Constant-time operations in sensitive paths is lacking
- **BIP32 compliant derivation**: for now a custom derivation per Nano is used.

## 🧪 Testing
```bash
# Run JavaScript test suite
npm test

# Run Ledger integration tests
npm run test:integration

# Verify against reference implementation
npm run test:vectors
```

## 📝 Known Limitations

- **Curve Specific**: Currently supports Baby Jubjub only
- **Aggregator Role**: Ledger device acts as signer only, not aggregator
- **Memory Constraints**: Maximum 5 participants due to RAM limitations on Nano S

## 🤝 Protocol Flow

### Round 1: Commitment Phase
1. Each participant (Ledger device) generates nonces
2. Compute hiding and binding commitments
3. Send commitments to coordinator

### Round 2: Signing Phase  
1. Coordinator computes binding factors
2. Each participant receives: message, binding factors, commitment list
3. Ledger computes partial signature
4. Coordinator aggregates partial signatures

### Verification
Aggregated signature can be verified with group public key using standard EdDSA verification.

## 📚 References

- [RFC 9591 - FROST](https://datatracker.ietf.org/doc/rfc9591/)
- [Baby Jubjub Elliptic Curve](https://eips.ethereum.org/EIPS/eip-2494)
- [Poseidon Hash Function](https://eprint.iacr.org/2019/458.pdf)
- [Ledger Development Documentation](https://developers.ledger.com/)

## 👥 Team

**ZKNOX** - Hardware security and Post-quantum cryptography for Ethereum systems

**RAILGUN** - An enhanced  Zcash over Ethereum, benefiting from greater DA and programmability.

## 📄 License

MIT
