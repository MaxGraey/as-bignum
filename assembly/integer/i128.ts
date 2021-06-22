import { u128 } from './u128';
import { i256 } from './i256';
import { u256 } from './u256';

import {
  __clz128,
  __ctz128,
  __floatuntidf,

  __udivmod128,
  __divmod_quot_hi,
  __divmod_rem_lo,
  __divmod_rem_hi,
} from '../globals';

import { atou128 } from '../utils';

export class i128 {

  @inline static get Zero(): i128 { return new i128(); }
  @inline static get One():  i128 { return new i128(1); }
  @inline static get Min():  i128 { return new i128(0, 0x8000000000000000); }
  @inline static get Max():  i128 { return new i128(u64.MAX_VALUE, 0x7FFFFFFFFFFFFFFF); }

  @inline
  static fromString(value: string, radix: i32 = 10): i128 {
    return changetype<i128>(atou128(value, radix));
  }

  @inline
  static fromI256(value: i256): i128 {
    return new i128(value.lo1, value.lo2);
  }

  @inline
  static fromU256(value: u256): i128 {
    return new i128(value.lo1, <i64>value.lo2);
  }

  @inline
  static fromI128(value: i128): i128 {
    return new i128(value.lo, value.hi);
  }

  @inline
  static fromU128(value: u128): i128 {
    return new i128(value.lo, <i64>value.hi);
  }

  @inline
  static fromI64(value: i64): i128 {
    return new i128(<u64>value, value >> 63);
  }

  @inline
  static fromU64(value: u64): i128 {
    return new i128(value);
  }

  // TODO need improvement
  // max safe uint for f64 actually 53-bits
  @inline
  static fromF64(value: f64): i128 {
    return new i128(<u64>value, reinterpret<i64>(value) >> 63);
  }

  // TODO need improvement
  // max safe int for f32 actually 23-bits
  @inline
  static fromF32(value: f32): i128 {
    return new i128(<u64>value, <i64>(reinterpret<i32>(value) >> 31));
  }

  @inline
  static fromI32(value: i32): i128 {
    return new i128(<u64>value, <i64>(value >> 31));
  }

  @inline
  static fromU32(value: u32): i128 {
    return new i128(<u64>value);
  }

  @inline
  static fromBits(lo1: i32, lo2: i32, hi1: i32, hi2: i32): i128 {
    return new i128(
      <u64>lo1 | ((<u64>lo2) << 32),
      <i64>hi1 | ((<i64>hi2) << 32),
    );
  }

  @inline
  static fromBytes<T>(array: T, bigEndian: bool = false): i128 {
    if (array instanceof u8[]) {
      return bigEndian
        // @ts-ignore
        ? i128.fromBytesBE(<u8[]>array)
        // @ts-ignore
        : i128.fromBytesLE(<u8[]>array);
    } else if (array instanceof Uint8Array) {
      return bigEndian
        ? i128.fromUint8ArrayBE(<Uint8Array>array)
        : i128.fromUint8ArrayLE(<Uint8Array>array);
    } else {
      throw new TypeError("Unsupported generic type");
    }
  }

  @inline
  static fromBytesLE(array: u8[]): i128 {
    return i128.fromUint8ArrayLE(changetype<Uint8Array>(array));
  }

  @inline
  static fromBytesBE(array: u8[]): i128 {
    return i128.fromUint8ArrayBE(changetype<Uint8Array>(array));
  }

  @inline
  static fromUint8ArrayLE(array: Uint8Array): i128 {
    assert(array.length && (array.length & 15) == 0);
    var buffer = array.dataStart;
    return new i128(
      load<u64>(buffer, 0 * sizeof<u64>()),
      load<u64>(buffer, 1 * sizeof<u64>())
    );
  }

  static fromUint8ArrayBE(array: Uint8Array): i128 {
    assert(array.length && (array.length & 15) == 0);
    var buffer = array.dataStart;
    return new i128(
      bswap<u64>(load<u64>(buffer, 1 * sizeof<u64>())),
      bswap<u64>(load<u64>(buffer, 0 * sizeof<u64>()))
    );
  }

  /**
   * Create 128-bit signed integer from generic type T
   * @param  value
   * @return 128-bit signed integer
   */
  @inline
  static from<T>(value: T): i128 {
         if (value instanceof bool) { return i128.fromU64(<u64>value); }
    else if (value instanceof i8)   { return i128.fromI64(<i64>value); }
    else if (value instanceof u8)   { return i128.fromU64(<u64>value); }
    else if (value instanceof i16)  { return i128.fromI64(<i64>value); }
    else if (value instanceof u16)  { return i128.fromU64(<u64>value); }
    else if (value instanceof i32)  { return i128.fromI64(<i64>value); }
    else if (value instanceof u32)  { return i128.fromU64(<u64>value); }
    else if (value instanceof i64)  { return i128.fromI64(<i64>value); }
    else if (value instanceof u64)  { return i128.fromU64(<u64>value); }
    else if (value instanceof f32)  { return i128.fromF64(<f64>value); }
    else if (value instanceof f64)  { return i128.fromF64(<f64>value); }
    else if (value instanceof i128) { return i128.fromI128(<i128>value); }
    else if (value instanceof u128) { return i128.fromU128(<u128>value); }
    else if (value instanceof i256) { return i128.fromI256(<i256>value); }
    else if (value instanceof u256) { return i128.fromU256(<u256>value); }
    else if (value instanceof u8[]) { return i128.fromBytes(<u8[]>value); }
    else { throw new TypeError("Unsupported generic type"); }
  }

  constructor(
    public lo: u64 = 0,
    public hi: i64 = 0,
  ) {}

  @inline
  isPos(): bool {
    return this.hi >= 0;
  }

  @inline
  isNeg(): bool {
    return this.hi < 0;
  }

  @inline
  isZero(): bool {
    return !(this.lo | this.hi);
  }

  @inline @operator.prefix('~')
  not(): i128 {
    return new i128(~this.lo, ~this.hi);
  }

  @inline @operator.prefix('+')
  pos(): i128 {
    return this;
  }

  @inline @operator.prefix('-')
  neg(): i128 {
    var lo = ~this.lo;
    var hi = ~this.hi;
    var lo1 = lo + 1;
    return new i128(lo1, hi + i64(lo1 < 0));
  }

  @inline @operator.prefix('!')
  static isEmpty(value: i128): bool {
    return value === null || value.isZero();
  }

  @inline @operator('|')
  static or(a: i128, b: i128): i128 {
    return new i128(a.lo | b.lo, a.hi | b.hi);
  }

  @inline @operator('^')
  static xor(a: i128, b: u128): i128 {
    return new i128(a.lo ^ b.lo, a.hi ^ b.hi);
  }

  @inline @operator('&')
  static and(a: i128, b: i128): i128 {
    return new i128(a.lo & b.lo, a.hi & b.hi);
  }

  @inline @operator('<<')
  static shl(value: i128, shift: i32): i128 {
    shift &= 127;

    // need for preventing redundant i32 -> u64 extends
    var shift64: i64 = shift;

    var mod1: i64 = ((((shift64 + 127) | shift64) & 64) >>> 6) - 1;
    var mod2: i64 = (shift64 >>> 6) - 1;

    shift64 &= 63;

    var vl = value.lo;
    var lo = vl << shift64;
    var hi = lo & ~mod2;

    hi |= ((value.hi << shift64) | ((vl >>> (64 - shift64)) & mod1)) & mod2;

    return new i128(lo & mod2, hi);
  }

  @inline @operator('>>>')
  static shr_u(value: i128, shift: i32): i128 {
    shift &= 127;

    // need for preventing redundant i32 -> u64 extends
    var shift64: i64 = shift;

    var mod1: i64 = ((((shift64 + 127) | shift64) & 64) >>> 6) - 1;
    var mod2: i64 = (shift64 >>> 6) - 1;

    shift64 &= 63;

    var vh = value.hi;
    var hi = vh >>> shift64;
    var lo = hi & ~mod2;

    lo |= ((value.lo >>> shift64) | ((vh << (64 - shift64)) & mod1)) & mod2;

    return new i128(lo, hi & mod2);
  }

  @inline @operator('+')
  static add(a: i128, b: i128): i128 {
    var blo = b.lo;
    var bhi = b.hi;
    var lo = a.lo + blo - (bhi >>> 63);
    var hi = a.hi + bhi + i64(lo < blo);
    return new i128(lo, hi);
  }

  @inline @operator('-')
  static sub(a: i128, b: i128): i128 {
    var alo = a.lo;
    var bhi = b.hi;
    var lo = alo  - b.lo + (bhi >>> 63);
    var hi = a.hi - bhi  - i64(lo > alo);
    return new i128(lo, hi);
  }

  @inline @operator('==')
  static eq(a: i128, b: i128): bool {
    return a.hi == b.hi && a.lo == b.lo;
  }

  @inline @operator('!=')
  static ne(a: i128, b: i128): bool {
    return !i128.eq(a, b);
  }

  @inline @operator('<')
  static lt(a: i128, b: i128): bool {
    var ah = a.hi, bh = b.hi;
    return ah == bh ? a.lo < b.lo : ah < bh;
  }

  @inline @operator('>')
  static gt(a: i128, b: i128): bool {
    var ah = a.hi, bh = b.hi;
    return ah == bh ? a.lo > b.lo : ah > bh;
  }

  @inline @operator('<=')
  static le(a: i128, b: i128): bool {
    return !i128.gt(a, b);
  }

  @inline @operator('>=')
  static ge(a: i128, b: i128): bool {
    return !i128.lt(a, b);
  }

  @inline
  static ord(a: i128, b: i128): i32 {
    var dlo = a.lo - b.lo;
    var dhi = a.hi - b.hi;
    var cmp = <i32>select<i64>(dhi, dlo, dhi != 0);
    // normalize to [-1, 0, 1]
    return i32(cmp > 0) - i32(cmp < 0);
  }

  @inline
  static popcnt(value: i128): i32 {
    return <i32>(popcnt(value.lo) + popcnt(value.hi));
  }

  @inline
  static clz(value: i128): i32 {
    return __clz128(value.lo, value.hi);
  }

  @inline
  static ctz(value: i128): i32 {
    return __ctz128(value.lo, value.hi);
  }

  @inline
  static abs(value: i128): i128 {
    var lo = value.lo;
    var hi = value.hi;
    if (hi >>> 63) {
      lo = -lo;
      hi = ~hi + i64(lo == 0);
    }
    return new i128(lo, hi);
  }

  @inline
  private toArrayBufferLE(buffer: usize): void {
    store<u64>(buffer, this.lo, 0 * sizeof<u64>());
    store<u64>(buffer, this.hi, 1 * sizeof<u64>());
  }

  @inline
  private toArrayBufferBE(buffer: usize): void {
    store<u64>(buffer, bswap<u64>(this.hi), 0 * sizeof<u64>());
    store<u64>(buffer, bswap<u64>(this.lo), 1 * sizeof<u64>());
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
   * Convert to byte array
   * @param bigEndian Little or Big Endian? Default: false
   * @returns  Array of bytes
   */
   @inline
   toBytes(bigEndian: bool = false): u8[] {
     var result = new Array<u8>(16);
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
      var result = new StaticArray<u8>(16);
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
     var result = new Uint8Array(16);
     this.toArrayBuffer(result.dataStart, bigEndian);
     return result;
   }

  // TODO
}
