import { i128 } from './i128';
import { u128, safeShl, safeShr } from './u128';
import { u256toDecimalString } from "../utils";
import { __mul256 } from '../globals';
import { u64SafeShl, u64SafeShr } from './helper';

@lazy const HEX_CHARS = '0123456789abcdef';

export class u256 {

  @inline static get Zero(): u256 { return new u256(); }
  @inline static get One():  u256 { return new u256(1); }
  @inline static get Min():  u256 { return new u256(); }
  @inline static get Max():  u256 { return new u256(-1, -1, -1, -1); }

  // TODO: fromString

  @inline
  static fromU256(value: u256): u256 {
    return new u256(value.lo1, value.lo2, value.hi1, value.hi2);
  }

  @inline
  static fromU128(value: u128): u256 {
    return new u256(value.lo, value.hi);
  }

  @inline
  static fromU64(value: u64): u256 {
    return new u256(value);
  }

  @inline
  static fromI64(value: i64): u256 {
    var mask = value >> 63;
    return new u256(value, mask, mask, mask);
  }

  @inline
  static fromU32(value: u32): u256 {
    return new u256(value);
  }

  @inline
  static fromI32(value: i32): u256 {
    var mask: u64 = value >> 63;
    return new u256(value, mask, mask, mask);
  }

  @inline
  static fromBits(
    l0: u32, l1: u32, l2: u32, l3: u32,
    h0: u32, h1: u32, h2: u32, h3: u32,
  ): u256 {
    return new u256(
      <u64>l0 | ((<u64>l1) << 32),
      <u64>l2 | ((<u64>l3) << 32),
      <u64>h0 | ((<u64>h1) << 32),
      <u64>h2 | ((<u64>h3) << 32),
    );
  }

  @inline
  static fromBytes<T>(array: T, bigEndian: bool = false): u256 {
    // @ts-ignore
    if (array instanceof u8[]) {
      return bigEndian
        // @ts-ignore
        ? u256.fromBytesBE(<u8[]>array)
        // @ts-ignore
        : u256.fromBytesLE(<u8[]>array);
    } else if (array instanceof Uint8Array) {
      return bigEndian
        ? u256.fromUint8ArrayBE(<Uint8Array>array)
        : u256.fromUint8ArrayLE(<Uint8Array>array);
    } else {
      throw new TypeError("Unsupported generic type");
    }
  }

  @inline
  static fromBytesLE(array: u8[]): u256 {
    assert(array.length && (array.length & 31) == 0);
    // @ts-ignore
    var buffer = array.dataStart
    return new u256(
      load<u64>(buffer, 0 * sizeof<u64>()),
      load<u64>(buffer, 1 * sizeof<u64>()),
      load<u64>(buffer, 2 * sizeof<u64>()),
      load<u64>(buffer, 3 * sizeof<u64>()),
    );
  }

  @inline
  static fromBytesBE(array: u8[]): u256 {
    assert(array.length && (array.length & 31) == 0);
    var buffer = array.dataStart;
    return new u256(
      bswap<u64>(load<u64>(buffer, 3 * sizeof<u64>())),
      bswap<u64>(load<u64>(buffer, 2 * sizeof<u64>())),
      bswap<u64>(load<u64>(buffer, 1 * sizeof<u64>())),
      bswap<u64>(load<u64>(buffer, 0 * sizeof<u64>()))
    );
  }

  @inline
  static fromUint8ArrayLE(array: Uint8Array): u256 {
    assert(array.length && (array.length & 31) == 0);
    var buffer = array.dataStart;
    return new u256(
        load<u64>(buffer, 0 * sizeof<u64>()),
        load<u64>(buffer, 1 * sizeof<u64>()),
        load<u64>(buffer, 2 * sizeof<u64>()),
        load<u64>(buffer, 3 * sizeof<u64>())
    );
  }

  @inline
  static fromUint8ArrayBE(array: Uint8Array): u256 {
    assert(array.length && (array.length & 31) == 0);
    var buffer = array.dataStart;
    return new u256(
        bswap<u64>(load<u64>(buffer, 3 * sizeof<u64>())),
        bswap<u64>(load<u64>(buffer, 2 * sizeof<u64>())),
        bswap<u64>(load<u64>(buffer, 1 * sizeof<u64>())),
        bswap<u64>(load<u64>(buffer, 0 * sizeof<u64>()))
    );
  }

  // TODO need improvement
  // max safe uint for f64 actually 52-bits
  @inline
  static fromF64(value: f64): u256 {
    var mask = u64(reinterpret<i64>(value) >> 63);
    return new u256(<u64>value, mask, mask, mask);
  }

  // TODO need improvement
  // max safe int for f32 actually 23-bits
  @inline
  static fromF32(value: f32): u256 {
    var mask = u64(reinterpret<i32>(value) >> 31);
    return new u256(<u64>value, mask, mask, mask);
  }

  /**
 * Create 256-bit unsigned integer from generic type T
 * @param  value
 * @returns 256-bit unsigned integer
 */
  @inline
  static from<T>(value: T): u256 {
    if (value instanceof bool) return u256.fromU64(<u64>value);
    else if (value instanceof i8) return u256.fromI64(<i64>value);
    else if (value instanceof u8) return u256.fromU64(<u64>value);
    else if (value instanceof i16) return u256.fromI64(<i64>value);
    else if (value instanceof u16) return u256.fromU64(<u64>value);
    else if (value instanceof i32) return u256.fromI64(<i64>value);
    else if (value instanceof u32) return u256.fromU64(<u64>value);
    else if (value instanceof i64) return u256.fromI64(<i64>value);
    else if (value instanceof u64) return u256.fromU64(<u64>value);
    else if (value instanceof f32) return u256.fromF64(<f64>value);
    else if (value instanceof f64) return u256.fromF64(<f64>value);
    else if (value instanceof u128) return u256.fromU128(<u128>value);
    else if (value instanceof u256) return u256.fromU256(<u256>value);
    else if (value instanceof u8[]) return u256.fromBytes(<u8[]>value);
    else if (value instanceof Uint8Array) return u256.fromBytes(<Uint8Array>value);
    else throw new TypeError("Unsupported generic type");
  }

  // TODO
  // static fromString(str: string): u256

  constructor(
    public lo1: u64 = 0,
    public lo2: u64 = 0,
    public hi1: u64 = 0,
    public hi2: u64 = 0,
  ) {}

  @inline
  set(value: u256): this {
    this.lo1 = value.lo1;
    this.lo2 = value.lo2;
    this.hi1 = value.hi1;
    this.hi2 = value.hi2;
    return this;
  }

  @inline
  setU128(value: u128): this {
    this.lo1 = value.lo;
    this.lo2 = value.hi;
    this.hi1 = 0;
    this.hi2 = 0;
    return this;
  }

  @inline
  setI64(value: i64): this {
    var mask: u64 = value >> 63;
    this.lo1 = value;
    this.lo2 = mask;
    this.hi1 = mask;
    this.hi2 = mask;
    return this;
  }

  @inline
  setU64(value: u64): this {
    this.lo1 = value;
    this.lo2 = 0;
    this.hi1 = 0;
    this.hi2 = 0;
    return this;
  }

  @inline
  setI32(value: i32): this {
    var mask: u64 = value >> 63;
    this.lo1 = value;
    this.lo2 = mask;
    this.hi1 = mask;
    this.hi2 = mask;
    return this;
  }

  @inline
  setU32(value: u32): this {
    this.lo1 = value;
    this.lo2 = 0;
    this.hi1 = 0;
    this.hi2 = 0;
    return this;
  }

  @inline
  isZero(): bool {
    return !(this.lo1 | this.lo2 | this.hi1 | this.hi2);
  }

  @inline @operator.prefix('!')
  static isEmpty(value: u256): bool {
    return value.isZero();
  }

  @inline @operator.prefix('~')
  not(): u256 {
    return new u256(~this.lo1, ~this.lo2, ~this.hi1, ~this.hi2);
  }

  @inline @operator.prefix('+')
  pos(): u256 {
    return this;
  }

  @operator.prefix('-')
  neg(): u256 {
    var
      lo1 = ~this.lo1,
      lo2 = ~this.lo2,
      hi1 = ~this.hi1,
      hi2 = ~this.hi2;

    var lo1p = lo1 + 1;
    var lo2p = lo2 + u64(lo1p < lo1);
    var hi1p = hi1 + ((lo2 & ~lo2p) >> 63);
    var hi2p = hi2 + ((hi1 & ~hi1p) >> 63);

    return new u256(lo1p, lo2p, hi1p, hi2p);
  }

  @operator.prefix('++')
  preInc(): this {
    var
      lo1 = this.lo1,
      lo2 = this.lo2,
      hi1 = this.hi1,
      hi2 = this.hi2;

    var lo1p = lo1 + 1;
    var lo2p = lo2 + u64(lo1p < lo1);
    var hi1p = hi1 + ((lo2 & ~lo2p) >> 63);
    var hi2p = hi2 + ((hi1 & ~hi1p) >> 63);

    this.lo1 = lo1p;
    this.lo2 = lo2p;
    this.hi1 = hi1p;
    this.hi2 = hi2p;

    return this;
  }

  @operator.prefix('--')
  preDec(): this {
    var
      lo1 = this.lo1,
      lo2 = this.lo2,
      hi1 = this.hi1,
      hi2 = this.hi2;

    var lo1p = lo1 - 1;
    var lo2p = lo2 - u64(lo1p > lo1);
    var hi1p = hi1 - ((~lo2 & lo2p) >> 63);
    var hi2p = hi2 - ((~hi1 & hi1p) >> 63);

    this.lo1 = lo1p;
    this.lo2 = lo2p;
    this.hi1 = hi1p;
    this.hi2 = hi2p;

    return this;
  }

  @inline @operator.postfix('++')
  postInc(): u256 {
    return this.clone().preInc();
  }

  @inline @operator.postfix('--')
  postDec(): u256 {
    return this.clone().preDec();
  }

  @operator('+')
  static add(a: u256, b: u256): u256 {
    var
      lo1a = a.lo1,
      lo2a = a.lo2,
      hi1a = a.hi1,
      hi2a = a.hi2;

    var
      lo1b = b.lo1,
      lo2b = b.lo2,
      hi1b = b.hi1,
      hi2b = b.hi2;

    var lo1 = lo1a + lo1b;
    var cy  = u64(lo1 < lo1a);
    var lo2 = lo2a + lo2b + cy;
        // for a + b + c case we should calculate carry bit differently
        cy  = ((lo2a & lo2b) | ((lo2a | lo2b) & ~lo2)) >> 63;
    var hi1 = hi1a + hi1b + cy;
        cy  = ((hi1a & hi1b) | ((hi1a | hi1b) & ~hi1)) >> 63;
    var hi2 = hi2a + hi2b + cy;
    return new u256(lo1, lo2, hi1, hi2);
  }

  @operator('-')
  static sub(a: u256, b: u256): u256 {
    var
      lo1a = a.lo1,
      lo2a = a.lo2,
      hi1a = a.hi1,
      hi2a = a.hi2;

    var
      lo1b = b.lo1,
      lo2b = b.lo2,
      hi1b = b.hi1,
      hi2b = b.hi2;

    var lo1 = lo1a - lo1b;
    var cy  = u64(lo1 > lo1a);
    var lo2 = lo2a - lo2b - cy;
        // for a - b - c case we should calculate carry bit differently
        cy  = ((~lo2a & lo2b) | ((~lo2a | lo2b) & lo2)) >> 63;
    var hi1 = hi1a - hi1b - cy;
        cy  = ((~hi1a & hi1b) | ((~hi1a | hi1b) & hi1)) >> 63;
    var hi2 = hi2a - hi2b - cy;
    return new u256(lo1, lo2, hi1, hi2);
  }

  @inline @operator('|')
  static or(a: u256, b: u256): u256 {
    return new u256(a.lo1 | b.lo1, a.lo2 | b.lo2, a.hi1 | b.hi1, a.hi2 | b.hi2);
  }

  @inline @operator('^')
  static xor(a: u256, b: u256): u256 {
    return new u256(a.lo1 ^ b.lo1, a.lo2 ^ b.lo2, a.hi1 ^ b.hi1, a.hi2 ^ b.hi2);
  }

  @inline @operator('&')
  static and(a: u256, b: u256): u256 {
    return new u256(a.lo1 & b.lo1, a.lo2 & b.lo2, a.hi1 & b.hi1, a.hi2 & b.hi2);
  }

  /**
   * Right shifts a 256-bit number by a specified number of bits.
   * 
   * @param value - The 256-bit number to be shifted.
   * @param shift - The number of bits to shift.
   * @returns A new u256 value that represents the shifted number.
   * 
   * @remarks
   * When the shift value is >= 256, the result is always zero. 
   * For shifts < 0, the function returns the original value without any shifts.
   */
  @operator('>>')
  static shr(value: u256, shift: i32): u256 {
    if (shift >= 256) return u256.Zero;
    if (shift <= 0) return value;

    if(shift > 128) {
      let low = new u128(value.hi1, value.hi2) >> (shift - 128);
      return new u256(low.lo, low.hi, 0, 0);
    }

    if(shift > 64) {
      return new u256(
        u64SafeShr(value.lo2, shift - 64) | u64SafeShl(value.hi1, 128 - shift),
        u64SafeShr(value.hi1, shift - 64) | u64SafeShl(value.hi2, 128 - shift),
        u64SafeShr(value.hi2, shift - 64),
        0
      );
    }

    return new u256(
      u64SafeShr(value.lo1, shift) | u64SafeShl(value.lo2, 64 - shift),
      u64SafeShr(value.lo2, shift) | u64SafeShl(value.hi1, 64 - shift),
      u64SafeShr(value.hi1, shift) | u64SafeShl(value.hi2, 64 - shift),
      u64SafeShr(value.hi2, shift)
    );
  }

  @inline @operator('>>>')
  static shr_u(value: u256, shift: i32): u256 {
    return u256.shr(value, shift);
  }

  /**
   * Left shifts a 256-bit number by a specified number of bits.
   * 
   * @param value - The 256-bit number to be shifted.
   * @param shift - The number of bits to shift.
   * @returns A new u256 value that represents the shifted number.
   * 
   * @remarks
   * When the shift value is >= 256, the result is always zero. 
   * For shifts < 0, the function returns the original value without any shifts.
   */
  @operator('<<')
  static shl(value: u256, shift: i32): u256 {
    if (shift >= 256) return u256.Zero;
    if (shift <= 0) return value;

    if(shift > 128) {
      let high: u128 = new u128(value.lo1, value.lo2) << (shift - 128);
      return new u256(0, 0, high.lo, high.hi);
    }

    if(shift > 64) {
      return new u256(
        0,
        u64SafeShl(value.lo1, shift - 64),
        u64SafeShl(value.lo2, shift - 64) | u64SafeShr(value.lo1, 128 - shift),
        u64SafeShl(value.hi1, shift - 64) | u64SafeShr(value.lo2, 128 - shift)
      );
    }

    return new u256(
      u64SafeShl(value.lo1, shift),
      u64SafeShl(value.lo2, shift) | u64SafeShr(value.lo1, 64 - shift),
      u64SafeShl(value.hi1, shift) | u64SafeShr(value.lo2, 64 - shift),
      u64SafeShl(value.hi2, shift) | u64SafeShr(value.hi1, 64 - shift)
    );
  }

  @inline @operator('==')
  static eq(a: u256, b: u256): bool {
    return (
      a.lo1 == b.lo1 && a.lo2 == b.lo2 &&
      a.hi1 == b.hi1 && a.hi2 == b.hi2
    );
  }

  @inline @operator('!=')
  static ne(a: u256, b: u256): bool {
    return !u256.eq(a, b);
  }

  @operator('<')
  static lt(a: u256, b: u256): bool {
    var ah2 = a.hi2, ah1 = a.hi1,
        bh2 = b.hi2, bh1 = b.hi1,
        al2 = a.lo2, bl2 = b.lo2;
    if (ah2 == bh2) {
      if (ah1 == bh1) {
        return al2 == bl2 ? a.lo1 < b.lo1 : al2 < bl2
      } else {
        return ah1 < bh1;
      }
    } else {
      return ah2 < bh2;
    }
  }

  @inline @operator('>')
  static gt(a: u256, b: u256): bool {
    return b < a;
  }

  @inline @operator('<=')
  static le(a: u256, b: u256): bool {
    return !u256.gt(a, b);
  }

  @inline @operator('>=')
  static ge(a: u256, b: u256): bool {
    return !u256.lt(a, b);
  }

  // mul: u256 x u256 = u256
  @inline @operator('*')
  static mul(a: u256, b: u256): u256 {
    return __mul256(a.lo1, a.lo2, a.hi1, a.hi2, b.lo1, b.lo2, b.hi1, b.hi2)
  }

  @inline @operator('%')
  static rem(a: u256, b: u256): u256 {
    return a.quoRem(b)[1];
  }

  @inline @operator('/')
  static div(a: u256, b: u256): u256 {
    return a.quoRem(b)[0];
  }

  /**
   * Returns the quotient and remainder of dividing a 256-bit number by another 256-bit number.
   *
   * @param divisor - The 256-bit divisor.
   * @returns An array containing the quotient and remainder, both as u256.
   * @throws {RangeError} If the divisor is zero.
   *
   */
  quoRem(divisor: u256): u256[] {
    if (this < divisor) return [u256.Zero, this];

    const dividendHigh = new u128(this.hi1, this.hi2);
    const dividendLow = new u128(this.lo1, this.lo2);
    const divisorHigh = new u128(divisor.hi1, divisor.hi2);
    const divisorLow = new u128(divisor.lo1, divisor.lo2);

    if (divisorHigh == u128.Zero) {
      // If the result fit in a u128,
      // then the division can be done directly using div64.
      if (dividendHigh < divisorLow) {
        const resp = this.div128(divisorLow);
        return [u256.fromU128(resp[0]), u256.fromU128(resp[1])];
      }

      // Otherwise, we need to use long division.

      let res = u256.fromU128(dividendHigh).div128(divisorLow);
      const quotientHigh = res[0];
      let remainderHigh = res[1];

      res = new u256(
        dividendLow.lo,
        dividendLow.hi,
        remainderHigh.lo,
        remainderHigh.hi
      ).div128(divisorLow);

      const quotientLow = res[0];
      const remainderLow = res[1];

      return [
        new u256(
          quotientLow.lo,
          quotientLow.hi,
          quotientHigh.lo,
          quotientHigh.hi
        ),
        u256.fromU128(remainderLow),
      ];
    }

    // Normalize the divisor and dividend.
    const shiftAmount: i32 = i32(clz(divisor.hi1) + clz(divisor.hi2));
    
    const normalizedDivisor: u256 = divisor << shiftAmount;

    const normalizedDividend: u256 = this >> 1;
    const normalizedDividendLow: u128 = new u128(
      normalizedDividend.lo1,
      normalizedDividend.lo2
    );
    const normalizedDividendHigh: u128 = new u128(
      normalizedDividend.hi1,
      normalizedDividend.hi2
    );

    let quotientHigh: u128 = longDivision256by128(
      normalizedDividendHigh,
      normalizedDividendLow,
      new u128(normalizedDivisor.hi1, normalizedDivisor.hi2)
    )[0];
    quotientHigh = quotientHigh >> (127 - shiftAmount);

    // Force the quotient to be an underestimate.
    if (quotientHigh != u128.Zero) {
      quotientHigh -= u128.One;
    }

    // Calculate the remainder using the quotient.
    let quotient: u256 = u256.fromU128(quotientHigh);
    let remainder: u256 = this - divisor * quotient;

    // Adjust the quotient and remainder if necessary.
    if (remainder >= divisor) {
      quotient += u256.One;
      remainder -= divisor;
    }

    return [quotient, remainder];
  }

  /**
   * Divides a 256-bit number by a 128-bit divisor.
   * 
   * @param divisor - The 128-bit divisor.
   * @returns An array containing the quotient and remainder, both as u128.
   * @throws {RangeError} If the divisor is zero or if the result will be larger than 128 bits.
   * 
   * @remarks
   * The function employs a long division method adapted for 256-bit numbers divided by 128-bit numbers.
   * The algorithm starts by normalizing the divisor and dividend to align their most significant bits.
   * This is done by shifting both the divisor and the dividend by the count of leading zeros in the divisor.
   * The function then calls `longDivision256by128` to perform the actual division on the normalized numbers.
   * Finally, the remainder is denormalized by shifting it back to the right by the same amount used to normalize the divisor.
   */
  div128(divisor: u128): u128[] {
    const dividendHigh: u128 = new u128(this.hi1, this.hi2);
    const dividendLow: u128 = new u128(this.lo1, this.lo2);

    if (divisor == u128.Zero) throw new RangeError("Division by zero");

    // Panic if the result won't fit in a 128-bits number.
    if (dividendHigh >= divisor) throw new RangeError("Integer overflow");

    const shiftAmount: i32 = i32(u128.clz(divisor));

    const normalizedDivisor: u128 = safeShl(divisor, shiftAmount);

    // Align the lower part of the dividend with the divisor.
    const normalizedDividendLow: u128 = safeShl(dividendLow, shiftAmount);

    // Align the higher part of the dividend:
    // - Shift the high part left by the same amount as the divisor.
    // - Shift the low part right to retain the most significant bits.
    const normalizedDividendHigh: u128 = safeShl(dividendHigh, shiftAmount) | safeShr(dividendLow, 128 - shiftAmount);

    const response = longDivision256by128(normalizedDividendHigh, normalizedDividendLow, normalizedDivisor);
    
    return [ response[0], safeShr(response[1], shiftAmount) ];
  }

  @inline
  static popcnt(value: u256): i32 {
    var count = popcnt(value.lo1);
    if (value.lo2) count += popcnt(value.lo2);
    if (value.hi1) count += popcnt(value.hi1);
    if (value.hi2) count += popcnt(value.hi2);
    return <i32>count;
  }

  @inline
  static clz(value: u256): i32 {
         if (value.hi2) return <i32>(clz(value.hi2) + 0);
    else if (value.hi1) return <i32>(clz(value.hi1) + 64);
    else if (value.lo2) return <i32>(clz(value.lo2) + 128);
    else                return <i32>(clz(value.lo1) + 192);
  }

  @inline
  static ctz(value: u256): i32 {
         if (value.lo1) return <i32>(ctz(value.lo1) + 0);
    else if (value.lo2) return <i32>(ctz(value.lo2) + 64);
    else if (value.hi1) return <i32>(ctz(value.hi1) + 128);
    else                return <i32>(ctz(value.hi2) + 192);
  }

  /**
   * Convert to 128-bit signed integer
   * @return 256-bit signed integer
   */
  @inline
  toI128(): i128 {
    return new i128(
      this.lo1,
      (this.lo2 & 0x7FFFFFFFFFFFFFFF) |
      (this.hi2 & 0x8000000000000000)
    );
  }

  /**
   * Convert to 128-bit unsigned integer
   * @return 128-bit unsigned integer
   */
  @inline
  toU128(): u128 {
    return new u128(this.lo1, this.lo2);
  }

  /**
  * Convert to 256-bit unsigned integer
  * @returns 256-bit unsigned integer
  */
  @inline
  toU256(): this {
    return this;
  }

  /**
   * Convert to 64-bit signed integer
   * @return 64-bit signed integer
   */
  @inline
  toI64(): i64 {
    return <i64>(
      (this.lo1 & 0x7FFFFFFFFFFFFFFF) |
      (this.hi2 & 0x8000000000000000)
    );
  }

  /**
   * Convert to 64-bit unsigned integer
   * @return 64-bit unsigned integer
   */
  @inline
  toU64(): u64 {
    return this.lo1;
  }

  /**
   * Convert to 32-bit signed integer
   * @return 32-bit signed integer
   */
  @inline
  toI32(): i32 {
    return <i32>this.toI64();
  }

  /**
   * Convert to 32-bit unsigned integer
   * @return 32-bit unsigned integer
   */
  @inline
  toU32(): u32 {
    return <u32>this.lo1;
  }

  /**
   * Convert to 1-bit boolean
   * @return 1-bit boolean
   */
  @inline
  toBool(): bool {
    return <bool>(this.lo1 | this.lo2 | this.hi1 | this.hi2);
  }

  @inline
  private toArrayBufferLE(buffer: usize): void {
    store<u64>(buffer, this.lo1, 0 * sizeof<u64>());
    store<u64>(buffer, this.lo2, 1 * sizeof<u64>());
    store<u64>(buffer, this.hi1, 2 * sizeof<u64>());
    store<u64>(buffer, this.hi2, 3 * sizeof<u64>());
  }

  @inline
  private toArrayBufferBE(buffer: usize): void {
    store<u64>(buffer, bswap(this.hi2), 0 * sizeof<u64>());
    store<u64>(buffer, bswap(this.hi1), 1 * sizeof<u64>());
    store<u64>(buffer, bswap(this.lo2), 2 * sizeof<u64>());
    store<u64>(buffer, bswap(this.lo1), 3 * sizeof<u64>());
  }

  @inline
  private toArrayBuffer(buffer: usize, bigEndian: bool = false): void {
    if (bigEndian) {
      this.toArrayBufferBE(buffer);
    } else {
      this.toArrayBufferLE(buffer);
    }
  }

  /**
   * Convert to generic type `T`. Useful inside other generics methods
   * @param  T  is <bool | i8 | u8 | i16 | u16 | i32 | u32 | i64 | u64 | f32 | f64 | i128 | u128 | u256 | u8[] | Uint8Array | `StaticArray<u8>` | string>
   * @returns   type of `T`
   */
  @inline
  as<T>(): T {
    var dummy!: T;
         if (dummy instanceof bool)       return <T>this.toBool();
    else if (dummy instanceof i8)         return <T>this.toI64();
    else if (dummy instanceof u8)         return <T>this.toU64();
    else if (dummy instanceof i16)        return <T>this.toI64();
    else if (dummy instanceof u16)        return <T>this.toU64();
    else if (dummy instanceof i32)        return <T>this.toI64();
    else if (dummy instanceof i64)        return <T>this.toI64();
    else if (dummy instanceof u32)        return <T>this.toU64();
    else if (dummy instanceof u64)        return <T>this.toU64();
    // else if (dummy instanceof f32)        return <T>this.toF64();
    // else if (dummy instanceof f64)        return <T>this.toF64();
    else if (dummy instanceof i128)       return <T>this.toI128();
    else if (dummy instanceof u128)       return <T>this.toU128();
    else if (dummy instanceof u256)       return <T>this.toU256();
    else if (dummy instanceof u8[])       return <T>this.toBytes();
    else if (dummy instanceof Uint8Array) return <T>this.toUint8Array();
    else if (dummy instanceof StaticArray<u8>) return <T>this.toStaticBytes();
    else if (dummy instanceof String)     return <T>this.toString();
    else throw new TypeError('Unsupported generic type');
  }

  /**
   * Convert to byte array
   * @param bigEndian Little or Big Endian? Default: false
   * @returns  Array of bytes
   */
  @inline
  toBytes(bigEndian: bool = false): u8[] {
    var result = new Array<u8>(32);
    this.toArrayBuffer(result.dataStart, bigEndian);
    return result;
  }

  /**
   * Convert to byte static array
   * @param bigEndian Little or Big Endian? Default: false
   * @returns  StaticArray of bytes
   */
   @inline
   toStaticBytes(bigEndian: bool = false): StaticArray<u8> {
     var result = new StaticArray<u8>(32);
     this.toArrayBuffer(changetype<usize>(result), bigEndian);
     return result;
   }

  /**
   * Convert to Uint8Array
   * @param bigEndian Little or Big Endian? Default: false
   * @returns  Uint8Array
   */
  @inline
  toUint8Array(bigEndian: bool = false): Uint8Array {
    var result = new Uint8Array(32);
    this.toArrayBuffer(result.dataStart, bigEndian);
    return result;
  }

  clone(): u256 {
    return new u256(this.lo1, this.lo2, this.hi1, this.hi2);
  }

  toString(radix: i32 = 10): string {
    assert(radix == 10 || radix == 16, 'radix argument must be between 10 or 16');
    if (this.isZero()) return '0';

    var result = '';
    if (radix == 16) {
      let shift: i32 = 252 - (u256.clz(this) & ~3);
      while (shift >= 0) {
        // @ts-ignore
        result += HEX_CHARS.charAt(<i32>((this >> shift).lo1 & 15));
        shift -= 4;
      }
      return result;
    }
    return u256toDecimalString(this);
  }
}

/**
 * Divides a 256-bit number by a 128-bit divisor.
 * 
 * @param dividendHigh - The high 128 bits of the dividend.
 * @param dividendLow - The low 128 bits of the dividend.
 * @param divisor - The 128-bit divisor.
 * @returns An array containing the quotient and remainder, both as u128.
 * @throws {RangeError} If the divisor is zero or if the result will be larger than 128 bits.
 * 
 * @remarks
 * The algorithm employs a long division method adapted for 256-bit numbers. 
 * It breaks down the dividend and divisor into 128-bit chunks and processes them iteratively.
 * The method ensures that the quotient and remainder fit within their respective bounds by 
 * adjusting them in a loop. The algorithm first calculates the high part of the quotient and 
 * remainder, then proceeds to the low part, combining them at the end.
 */
function longDivision256by128(dividendHigh: u128, dividendLow: u128, divisor: u128): u128[] {
  if (divisor == u128.Zero) throw new RangeError("Division by zero");
  
  // Check if the result will be larger than 128 bits.
  if (dividendHigh >= divisor) throw new RangeError("Integer overflow");

  // Initial quotient and remainder estimation for the high part.
  let quoRem = dividendHigh.quoRem(divisor.hi);
  let quotientHigh = quoRem[0];
  let remainderHigh = quoRem[1];

  // Adjust the high quotient and remainder.
  while (
     // if quotientHigh doesn't fit in a u64
    quotientHigh.hi != 0
    // or if the estimated quotient and the divisor are to large for the next next portion of the dividend 
    || quotientHigh * u128.fromU64(divisor.lo) > new u128(dividendLow.hi, remainderHigh.lo)
  ) {
    quotientHigh -= u128.One;
    remainderHigh += u128.fromU64(divisor.hi);
    if (remainderHigh.hi != 0) {
      break;
    }
  }

  // Calculate the next portion of the dividend.
  const combinedRemainder: u128 = new u128(dividendLow.hi, dividendHigh.lo) - quotientHigh * divisor;

  // Initial quotient and remainder estimation for the low part.
  quoRem = combinedRemainder.quoRem(divisor.hi);
  let quotientLow = quoRem[0];
  let remainderLow = quoRem[1];

  // Adjust the low quotient and remainder.
  while (
    quotientLow.hi != 0
    || quotientLow * u128.fromU64(divisor.lo) > new u128(dividendLow.lo, remainderLow.lo)
  ) {
    quotientLow -= u128.One;
    remainderLow += u128.fromU64(divisor.hi);
    if (remainderLow.hi != 0) {
      break;
    }
  }
      
  return [
    new u128(quotientLow.lo, quotientHigh.lo),
    new u128(dividendLow.lo, combinedRemainder.lo) - quotientLow * divisor,
  ];
}