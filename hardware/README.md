
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
CLA || 19 || CurveID || 00 || 80 || CDATA
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
E0 19 00 00 80 [GroupKey 64B][Identifier 32B][SecretKey 32B]
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
CLA || 1A || 00 || 00 || 00
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
Request:  E0 1A 00 00 00
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
CLA || 1B || 00 || 00 || 20 || CDATA
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
CLA || 1C || NumParticipants || 00 || F0 || CDATA
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
E0 1C 03 00 F0 [First 240 bytes]
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
CLA || 1D || 00 || 00 || Lc || CDATA
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
CLA || 1E || 00 || 00 || 00
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
