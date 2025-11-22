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

## FROST Protocol APDU Commands

## Protocol Overview

The FROST protocol is executed in several phases:
1. **Trusted Setup**: Inject group key, identifier, and secret key
2. **Commitment**: Generate and store nonces and their commitments
3. **Signing**: Inject message and commitment list, then compute partial signature

---

## 0x19 - FROST_INJECT_KEYS

Injects the group public key, participant identifier, and secret key during trusted setup phase. This command stores all parameters in secure memory for later use in the FROST protocol.

**Syntax:**
```
CLA || 17 || CurveID || 00 || 80 || CDATA
```

**Parameters:**
- **P1 (CurveID)**: Curve identifier (e.g., `0x00` for Baby Jubjub)
- **P2**: `0x00` (reserved)
- **Lc**: `0x80` (128 bytes)

**CDATA (128 bytes):**
- Bytes 0-63: Group public key (64 bytes: 32B X-coordinate + 32B Y-coordinate, big-endian)
- Bytes 64-95: Participant identifier (32 bytes, big-endian, small value zero-padded)
- Bytes 96-127: Secret key (32 bytes, big-endian)

**Response:**
- SW: `0x9000` on success
- Data: None

**Example:**
```
80 17 00 00 80 [GroupKey 64B][Identifier 32B][SecretKey 32B]
```

**Notes:**
- Execute only in secure/trusted environment
- Identifier should match participant's position in signing set
- Wrong length returns error

---

## 0x1A - FROST_COMMIT

Generates two random nonces (hiding and binding) and computes their elliptic curve commitments. The nonces are stored securely; only commitments are returned.

**Syntax:**
```
CLA || 18 || 00 || 00 || 00
```

**Parameters:**
- **P1**: `0x00` (reserved)
- **P2**: `0x00` (reserved)
- **Lc**: `0x00` (no input data)

**Response:**
- SW: `0x9000` on success
- Data: 128 bytes
  - Bytes 0-63: Hiding commitment point (32B X + 32B Y, big-endian)
  - Bytes 64-127: Binding commitment point (32B X + 32B Y, big-endian)

**Example:**
```
Request:  80 18 00 00 00
Response: [HidingCommitment 64B][BindingCommitment 64B] 9000
```

**Notes:**
- Commitments must be broadcast to all participants
- Nonces remain secret on device
- Call only once per signing session

---

## 0x1B - FROST_INJECT_MESSAGE

Injects the 32-byte message hash to be signed. The message is stored in device memory for signature computation.

**Syntax:**
```
CLA || 19 || 00 || 00 || 20 || CDATA
```

**Parameters:**
- **P1**: `0x00` (reserved)
- **P2**: `0x00` (reserved)
- **Lc**: `0x20` (32 bytes)

**CDATA (32 bytes):**
- Message hash (big-endian)

**Response:**
- SW: `0x9000` on success
- Data: None

**Example:**
```
80 19 00 00 20 [Message 32B]
```

**Notes:**
- Message should typically be a cryptographic hash
- Wrong length returns error

---

## 0x1C - FROST_INJECT_COMMITMENTS_PART1

Injects the first 240 bytes of the commitment list from all participants. Each participant contributes 160 bytes (identifier + hiding commitment + binding commitment).

**Syntax:**
```
CLA || 1A || NumParticipants || 00 || F0 || CDATA
```

**Parameters:**
- **P1 (NumParticipants)**: Total number of participants (2 ≤ n ≤ 15)
- **P2**: `0x00` (reserved)
- **Lc**: `0xF0` (240 bytes)

**CDATA (240 bytes):**
- First 240 bytes of commitment list
- Each participant: 160 bytes (32B identifier + 64B hiding + 64B binding)

**Response:**
- SW: `0x9000` on success
- Data: 2 bytes - bytes received so far (big-endian uint16)

**Example (3 participants):**
```
80 1A 03 00 F0 [First 240 bytes]
Response: 00F0 9000
```

**Notes:**
- P1 must be between 2 and 15
- Total commitment list size = n × 160 bytes
- Response indicates cumulative bytes received

---

## 0x1D - FROST_INJECT_COMMITMENTS_PART2

Injects the remaining bytes of the commitment list. Must be called after command 0x1A.

**Syntax:**
```
CLA || 1B || 00 || 00 || Lc || CDATA
```

**Parameters:**
- **P1**: `0x00` (reserved)
- **P2**: `0x00` (reserved)
- **Lc**: Remaining bytes (max 240)

**CDATA:**
- Remaining commitment list bytes

**Response:**
- SW: `0x9000` on success
- Data: 2 bytes - total bytes received (big-endian uint16)

**Example (3 participants, 480 total):**
```
80 1B 00 00 F0 [Remaining 240 bytes]
Response: 01E0 9000  (0x01E0 = 480 bytes)
```

**Notes:**
- Completes commitment list injection
- Device validates total equals n × 160

## 0x1E - FROST_PARTIAL_SIGN

Computes the partial signature share for this participant. Requires prior execution of commands 0x17-0x1C.

**Syntax:**
```
CLA || 1D || 00 || 00 || 00
```

**Parameters:**
- **P1**: `0x00` (reserved)
- **P2**: `0x00` (reserved)
- **Lc**: `0x00` (no input data)

**Response:**
- SW: `0x9000` on success
- Data: 32 bytes - partial signature z_i (big-endian scalar)

**Example:**
```
Request:  80 1D 00 00 00
Response: [PartialSignature 32B] 9000
```

**Computation:**
```
1. binding_factors = H(group_key || commitments || message)
2. R = Σ(commitment_i × binding_factor_i)
3. c = H(R || group_key || message) mod q
4. z_i = hiding_nonce + (binding_nonce × binding_factor_i) + (lambda_i × sk × c) mod q
```

**Notes:**
- Returns error if prerequisites not met (state check)
- Partial signature sent to coordinator for aggregation
- Final signature is (R, Σz_i)


## 0x1F - FROST_RESET

Clears all FROST protocol state from device memory including keys, nonces, commitments, message, and commitment list. Should be called after signature completion or on error.

**Syntax:**
```
CLA || 1F || 00 || 00 || 00
```

**Parameters:**
- **P1**: `0x00` (reserved)
- **P2**: `0x00` (reserved)
- **Lc**: `0x00` (no input data)

**Response:**
- SW: `0x9000` on success
- Data: None

**Example:**
```
80 1F 00 00 00
Response: 9000
```

**Notes:**
- Security-critical for preventing state leakage
- Call between signing sessions

---

## 0x20 - FROST_GET_STATUS

Queries the current state of the FROST protocol state machine. Returns bitfield indicating which operations have been completed.

**Syntax:**
```
CLA || 20 || 00 || 00 || 00
```

**Parameters:**
- **P1**: `0x00` (reserved)
- **P2**: `0x00` (reserved)
- **Lc**: `0x00` (no input data)

**Response:**
- SW: `0x9000` on success
- Data: 8 bytes
  - Byte 0: State flags (bitfield)
    - Bit 0: Keys injected (0x17)
    - Bit 1: Commitments generated (0x18)
    - Bit 2: Message injected (0x19)
    - Bit 3: Commitment list complete (0x1A/0x1B)
    - Bit 4: Lambda injected (0x1C)
    - Bits 5-7: Reserved
  - Byte 1: Number of participants
  - Bytes 2-3: Commitment list bytes received (big-endian uint16)
  - Bytes 4-7: Reserved (zero-padded)

**Example:**
```
Request:  80 20 00 00 00
Response: 1F 03 01E0 00000000 9000
```
- `0x1F` = all operations complete
- `0x03` = 3 participants
- `0x01E0` = 480 bytes commitment list

---

## Complete Protocol Flow

```
1. 0x17 FROST_INJECT_KEYS       → Store keys
2. 0x18 FROST_COMMIT            → Generate commitments
   [Broadcast commitments to all participants]
   [Collect commitments from others]
3. 0x19 FROST_INJECT_MESSAGE    → Store message
4. 0x1A FROST_INJECT_COMMITMENTS_PART1 → First 240 bytes
5. 0x1B FROST_INJECT_COMMITMENTS_PART2 → Remaining bytes
6. 0x1D FROST_PARTIAL_SIGN      → Compute signature share
   [Send signature share to coordinator]
7. 0x1F FROST_RESET             → Clear state
```

---

## Error Codes

| SW Code | Description |
|---------|-------------|
| `0x9000` | Success |
| `0x6700` | Wrong length |
| `0x6A86` | Wrong P1/P2 |
| `0x6985` | Conditions not satisfied (wrong state) |
| `0x6A80` | Invalid data |

---

## Notes

- All values are big-endian
- Elliptic curve points: uncompressed format (X, Y)
- Maximum 3 participants
- Nonces must never be reused
