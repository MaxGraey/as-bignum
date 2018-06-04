import { u128 } from './u128';

export class u256 {
  static readonly Zero: u256 = new u256()
  static readonly One:  u256 = new u256(1)
  static readonly Min:  u256 = u256.Zero
  static readonly Max:  u256 = new u256(u64.MAX_VALUE, u64.MAX_VALUE, u64.MAX_VALUE, u64.MAX_VALUE)

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
    var mask = -(<u64>(value < 0));
    return new u256(value, mask, mask, mask);
  }

  @inline
  static fromU32(value: u32): u256 {
    return new u256(value);
  }

  @inline
  static fromI32(value: i32): u256 {
    var mask = -(<u64>(value < 0));
    return new u256(value, mask, mask, mask);
  }

  @inline
  static from128Bits(lo: u128, hi: u128): u256 {
    return new u256(lo.lo, lo.hi, hi.lo, hi.hi);
  }

  @inline
  static from64Bits(lo1: u64, lo2: u64, hi1: u64, hi2: u64): u256 {
    return new u256(lo1, lo2, hi1, hi2);
  }

  @inline
  static from32Bits(
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
  static fromBytes(array: u8[]): u256 {
    // TODO
    unreachable();
    return u256.Zero;
  }

  // TODO need improvement
  // max safe uint for f64 actually 52-bits
  @inline
  static fromF64(value: f64): u256 {
    return new u256(<u64>value);
  }

  // TODO need improvement
  // max safe int for f32 actually 23-bits
  @inline
  static fromF32(value: f32): u256 {
    return new u256(<u64>value);
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
    var mask = -(<u64>(value < 0));
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
    var mask = -(<u64>(value < 0));
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
    return !value || !value.isZero();
  }

  @inline @operator.prefix('~')
  not(): u256 {
    return new u256(~this.lo1, ~this.lo2, ~this.hi1, ~this.hi2);
  }

  @inline @operator.prefix('-')
  neg(): u128 {
	  var lo1 = ~this.lo1,
        lo2 = ~this.lo2,
        hi1 = ~this.hi1,
        hi2 = ~this.hi2;

    var cy  = ((lo1 & 1) + (lo1 >> 1)) >> 63;
    var cy1 = ((lo2 & 1) + (lo2 >> 1)) >> 63;
    var cy2 = ((hi1 & 1) + (hi1 >> 1)) >> 63;

    return new u128(lo1 + 1, lo2 + cy, hi1 + cy1, hi2 + cy2);
  }

  @inline
  static popcnt(value: u256): i32 {
    return <i32>(
      popcnt(value.lo1) +
      popcnt(value.lo2) +
      popcnt(value.hi1) +
      popcnt(value.hi2)
    );
  }

  @inline
  static clz(value: u256): i32 {
         if (value.hi2) return clz(value.hi2);
    else if (value.hi1) return clz(value.hi1) + 64;
    else if (value.lo2) return clz(value.lo2) + 128;
    else                return clz(value.lo1) + 192;
  }

  @inline
  static ctz(value: u256): i32 {
         if (value.lo1) return ctz(value.lo1);
    else if (value.lo2) return ctz(value.lo2) + 64;
    else if (value.hi1) return ctz(value.hi1) + 128;
    else                return ctz(value.hi2) + 192;
  }

  /*
  @inline
  static abs(value: u256): i32 {
    return value < 0 ? value.neg() : value;
  }
  */

  @inline
  toU128(): u128 {
    return new u128(this.lo1, this.lo2);
  }

  @inline
  toI64(): i64 {
	  return <i64>(
      (this.lo1 & 0x7FFFFFFFFFFFFFFF) |
      (this.hi2 & 0x8000000000000000)
    );
  }

  @inline
  toU64(): u64 {
    return this.lo1;
  }

  @inline
  toI32(): i32 {
    return <i32>this.toI64();
  }

  @inline
  toU32(): u32 {
    return <u32>this.lo1;
  }

  @inline
  toBytes(le: bool = true): u8[] {
    return le ? this.toBytesLE() : this.toBytesBE();
  }

  toBytesLE(): u8[] {
    var hi1 = this.hi1, lo1 = this.lo1;
    var hi2 = this.hi2, lo2 = this.lo2;

    var result: u8[] = [
      <u8>(lo1 >>  0), <u8>(lo1 >>  8), <u8>(lo1 >> 16), <u8>(lo1 >> 24),
      <u8>(lo1 >> 32), <u8>(lo1 >> 40), <u8>(lo1 >> 48), <u8>(lo1 >> 56),

      <u8>(lo2 >>  0), <u8>(lo2 >>  8), <u8>(lo2 >> 16), <u8>(lo2 >> 24),
      <u8>(lo2 >> 32), <u8>(lo2 >> 40), <u8>(lo2 >> 48), <u8>(lo2 >> 56),

      <u8>(hi1 >>  0), <u8>(hi1 >>  8), <u8>(hi1 >> 16), <u8>(hi1 >> 24),
      <u8>(hi1 >> 32), <u8>(hi1 >> 40), <u8>(hi1 >> 48), <u8>(hi1 >> 56),

      <u8>(hi2 >>  0), <u8>(hi2 >>  8), <u8>(hi2 >> 16), <u8>(hi2 >> 24),
      <u8>(hi2 >> 32), <u8>(hi2 >> 40), <u8>(hi2 >> 48), <u8>(hi2 >> 56),
    ];

    return result;
  }

  toBytesBE(): u8[] {
    var hi1 = this.hi1, lo1 = this.lo1;
    var hi2 = this.hi2, lo2 = this.lo2;

    var result: u8[] = [
      <u8>(hi2 >> 56), <u8>(hi2 >> 48), <u8>(hi2 >> 40), <u8>(hi2 >> 32),
      <u8>(hi2 >> 24), <u8>(hi2 >> 16), <u8>(hi2 >>  8), <u8>(hi2 >>  0),

      <u8>(hi1 >> 56), <u8>(hi1 >> 48), <u8>(hi1 >> 40), <u8>(hi1 >> 32),
      <u8>(hi1 >> 24), <u8>(hi1 >> 16), <u8>(hi1 >>  8), <u8>(hi1 >>  0),

      <u8>(lo2 >> 56), <u8>(lo2 >> 48), <u8>(lo2 >> 40), <u8>(lo2 >> 32),
      <u8>(lo2 >> 24), <u8>(lo2 >> 16), <u8>(lo2 >>  8), <u8>(lo2 >>  0),

      <u8>(lo1 >> 56), <u8>(lo1 >> 48), <u8>(lo1 >> 40), <u8>(lo1 >> 32),
      <u8>(lo1 >> 24), <u8>(lo1 >> 16), <u8>(lo1 >>  8), <u8>(lo1 >>  0),
    ];

    return result;
  }

  @inline
  clone(): u256 {
    return new u256(this.lo1, this.lo2, this.hi1, this.hi2);
  }

  // TODO
  // toString(radix: i32): string
}
