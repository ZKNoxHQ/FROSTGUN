import { ed25519 } from '@noble/curves/ed25519.js';
import { secp256k1 } from '@noble/curves/secp256k1.js';
import { buildBabyjub as buildBabyJub } from "circomlibjs";
import { buildPoseidon } from "circomlibjs";

// ZKN wrapper class that wraps ANY point (Baby Jubjub OR Noble curves)
export class zkn_point {
    constructor(point, curveImpl) {
        this.point = point;
        this.curveImpl = curveImpl;
        this.curveType = curveImpl.curveType; // 'babyjub', 'ed25519', or 'secp256k1'
    }

    // Unified add method
    add(other) {
        const otherPoint = other instanceof zkn_point ? other.point : other;

        if (this.curveType === 'babyjub') {
            const result = this.curveImpl.babyJub.addPoint(this.point, otherPoint);
            return new zkn_point(result, this.curveImpl);
        } else {
            // Noble curves (ed25519, secp256k1)
            const result = this.point.add(otherPoint);
            return new zkn_point(result, this.curveImpl);
        }
    }

    // Unified multiply method
    multiply(scalar) {
        const scalarBigInt = typeof scalar === 'bigint' ? scalar : BigInt(scalar);

        if (this.curveType === 'babyjub') {
            const result = this.curveImpl.babyJub.mulPointEscalar(this.point, scalarBigInt);
            return new zkn_point(result, this.curveImpl);
        } else {
            // Noble curves (ed25519, secp256k1) in v2.x
            // Handle edge cases: if scalar is 0 or multiple of order, return zero point
            const order = this.curveImpl.order;
            const normalizedScalar = scalarBigInt % order;

            if (normalizedScalar === 0n) {
                return this.curveImpl.getZero();
            }

            const result = this.point.multiply(normalizedScalar);
            return new zkn_point(result, this.curveImpl);
        }
    }

    // Check equality
    equals(other) {
        const otherPoint = other instanceof zkn_point ? other.point : other;

        if (this.curveType === 'babyjub') {
            return this.curveImpl.babyJub.F.eq(this.point[0], otherPoint[0]) &&
                this.curveImpl.babyJub.F.eq(this.point[1], otherPoint[1]);
        } else {
            // Noble curves
            return this.point.equals(otherPoint);
        }
    }

    // Negate point
    negate() {
        if (this.curveType === 'babyjub') {
            const negated = [this.curveImpl.babyJub.F.neg(this.point[0]), this.point[1]];
            return new zkn_point(negated, this.curveImpl);
        } else {
            // Noble curves
            const result = this.point.negate();
            return new zkn_point(result, this.curveImpl);
        }
    }

    // Get the raw underlying point
    getRaw() {
        return this.point;
    }

    // Get x coordinate as BigInt
    getX() {
        if (this.curveType === 'babyjub') {
            return this.curveImpl.babyJub.F.toObject(this.point[0]);
        } else {
            // Noble curves
            const affine = this.point.toAffine();
            return affine.x;
        }
    }

    // Get y coordinate as BigInt
    getY() {
        if (this.curveType === 'babyjub') {
            return this.curveImpl.babyJub.F.toObject(this.point[1]);
        } else {
            // Noble curves
            const affine = this.point.toAffine();
            return affine.y;
        }
    }

    // Convert to hex
    toHex() {
        if (this.curveType === 'babyjub') {
            // For Baby Jubjub, pack the point
            const packed = this.curveImpl.babyJub.packPoint(this.point);
            return Buffer.from(packed).toString('hex');
        } else {
            // Noble curves
            return this.point.toHex();
        }
    }

    // Convert to affine coordinates
    toAffine() {
        if (this.curveType === 'babyjub') {
            return {
                x: this.getX(),
                y: this.getY()
            };
        } else {
            // Noble curves
            return this.point.toAffine();
        }
    }
}

// ZKN Curve Wrapper
export class zkn_curve {
    constructor(curveType, babyJub = null, poseidon = null) {
        this.curveType = curveType;

        if (curveType === 'babyjub') {
            if (!babyJub) {
                throw new Error('babyJub instance required for babyjub curve type');
            }
            this.babyJub = babyJub;
            this.poseidon = poseidon;
            this.F = babyJub.F;
            this.basePoint = new zkn_point(babyJub.Base8, this);
            this.order = babyJub.subOrder;
        } else if (curveType === 'ed25519') {
            this.nobleCurve = ed25519;
            // In @noble/curves v2.x, use Point.BASE
            this.basePoint = new zkn_point(ed25519.Point.BASE, this);
            // Ed25519 order (from RFC 8032)
            this.order = BigInt('0x1000000000000000000000000000000014def9dea2f79cd65812631a5cf5d3ed');
        } else if (curveType === 'secp256k1') {
            this.nobleCurve = secp256k1;
            this.basePoint = new zkn_point(secp256k1.Point.BASE, this);
            // secp256k1 order
            this.order = BigInt('0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141');
        } else {
            throw new Error(`Unsupported curve type: ${curveType}`);
        }
    }

    // Get the base/generator point (wrapped)
    getBase() {
        return this.basePoint;
    }

    // Wrap any point
    wrapPoint(point) {
        return new zkn_point(point, this);
    }

    // Unwrap a point (get raw underlying point)
    unwrapPoint(wrappedPoint) {
        return wrappedPoint instanceof zkn_point ? wrappedPoint.point : wrappedPoint;
    }

    // Get the zero/identity point
    getZero() {
        if (this.curveType === 'babyjub') {
            // Baby Jubjub's identity point [0, 1]
            const zero = [this.babyJub.F.zero, this.babyJub.F.one];
            return new zkn_point(zero, this);
        } else {
            // Noble curves v2.x use Point.ZERO
            const zero = this.nobleCurve.Point.ZERO;
            return new zkn_point(zero, this);
        }
    }

    // Scalar multiplication: scalar * Base
    scalarMultiply(scalar) {
        return this.basePoint.multiply(scalar);
    }

    // Scalar multiplication of any point: scalar * point
    scalarMultiplyPoint(scalar, point) {
        const wrappedPoint = point instanceof zkn_point ? point : this.wrapPoint(point);
        return wrappedPoint.multiply(scalar);
    }

    // Get the curve order (order of the base point)
    getOrder() {
        return this.order;
    }

    // Get the field modulus
    getModulus() {
        if (this.curveType === 'babyjub') {
            // Baby Jubjub field modulus (same as BN128 scalar field)
            return BigInt("21888242871839275222246405745257275088548364400416034343698204186575808495617");
        } else if (this.curveType === 'ed25519') {
            // Ed25519 field modulus: 2^255 - 19
            return BigInt('0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed');
        } else if (this.curveType === 'secp256k1') {
            // secp256k1 field modulus
            return BigInt('0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f');
        }
        throw new Error(`Cannot get modulus for curve type: ${this.curveType}`);
    }
}

// Helper function to create zkn_curve instances
export async function createUniversalCurve(curveType) {
    if (curveType === 'babyjub') {
        const babyJub = await buildBabyJub("bn128");
        const poseidon = await buildPoseidon();
        return new zkn_curve('babyjub', babyJub, poseidon);
    } else if (curveType === 'ed25519' || curveType === 'secp256k1') {
        return new zkn_curve(curveType);
    } else {
        throw new Error(`Unsupported curve type: ${curveType}`);
    }
}

// Modular inverse using Fermat's little theorem: a^(-1) = a^(p-2) mod p
export function modInverse(a, modulus) {
    return modPow(a, modulus - 2n, modulus);
}

// Modular exponentiation
export function modPow(base, exponent, modulus) {
    if (modulus === 1n) return 0n;
    let result = 1n;
    base = base % modulus;
    while (exponent > 0n) {
        if (exponent % 2n === 1n) {
            result = (result * base) % modulus;
        }
        exponent = exponent >> 1n;
        base = (base * base) % modulus;
    }
    return result;
}
