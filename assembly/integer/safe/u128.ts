import { u128 as U128 } from '../u128';

@external("safe_u128.spec.as", "logStr")
declare function logStr(str: string): void;

// @external("safe_u128.spec.as", "logF64")
// declare function logF64(v: f64): void;

// export namespace safe {
  export class u128 extends U128 {

    @inline static get Zero(): u128 { return new u128(); }
    @inline static get One():  u128 { return new u128(1); }
    @inline static get Min():  u128 { return new u128(); }
    @inline static get Max():  u128 { return new u128(-1, -1); }

    @inline
    static fromString(value: string, radix: i32 = 0): u128 {
      return atou128(value, radix);
    }

    @inline
    static fromI256(value: i256): u128 {
      return new u128(value.lo1, value.lo2);
    }

    @inline
    static fromU256(value: u256): u128 {
      return new u128(value.lo1, value.lo2);
    }

    @inline
    static fromI128(value: i128): u128 {
      return new u128(value.lo, value.hi);
    }

    @inline
    static fromU128(value: u128): u128 {
      return new u128(value.lo, value.hi);
    }

    @inline
    static fromI64(value: i64): u128 {
      return new u128(<u64>value, <u64>(value >> 63));
    }

    @inline
    static fromU64(value: u64): u128 {
      return new u128(value);
    }

    // TODO need improvement
    // max safe uint for f64 actually 53-bits
    @inline
    static fromF64(value: f64): u128 {
      return new u128(<u64>value, -(<u64>(value < 0)));
    }

    // TODO need improvement
    // max safe int for f32 actually 23-bits
    @inline
    static fromF32(value: f32): u128 {
      return new u128(<u64>value, -(<u64>(value < 0)));
    }

    @inline
    static fromI32(value: i32): u128 {
      return new u128(<u64>value, <u64>(<i64>value >> 63));
    }

    @inline
    static fromU32(value: u32): u128 {
      return new u128(<u64>value);
    }

    @inline
    static fromBool(value: bool): u128 {
      return new u128(<u64>value);
    }

    @inline
    static fromBits(lo1: u32, lo2: u32, hi1: u32, hi2: u32): u128 {
      return new u128(
        <u64>lo1 | ((<u64>lo2) << 32),
        <u64>hi1 | ((<u64>hi2) << 32),
      );
    }

    @inline
    static fromBytes(array: u8[], bigEndian: bool = false): u128 {
      return bigEndian ? u128.fromBytesBE(array) : u128.fromBytesLE(array);
    }

    static fromBytesLE(array: u8[]): u128 {
      assert(array !== null && array.length == 16);
      return new u128(
        <u64>unchecked(array[0]) <<  0 |
        <u64>unchecked(array[1]) <<  8 |
        <u64>unchecked(array[2]) << 16 |
        <u64>unchecked(array[3]) << 24 |
        <u64>unchecked(array[4]) << 32 |
        <u64>unchecked(array[5]) << 40 |
        <u64>unchecked(array[6]) << 48 |
        <u64>unchecked(array[7]) << 56,

        <u64>unchecked(array[8])  <<  0 |
        <u64>unchecked(array[9])  <<  8 |
        <u64>unchecked(array[10]) << 16 |
        <u64>unchecked(array[11]) << 24 |
        <u64>unchecked(array[12]) << 32 |
        <u64>unchecked(array[13]) << 40 |
        <u64>unchecked(array[14]) << 48 |
        <u64>unchecked(array[15]) << 56,
      );
    }

    static fromBytesBE(array: u8[]): u128 {
      assert(array !== null && array.length == 16);
      return new u128(
        <u64>unchecked(array[8])  << 56 |
        <u64>unchecked(array[9])  << 48 |
        <u64>unchecked(array[10]) << 40 |
        <u64>unchecked(array[11]) << 32 |
        <u64>unchecked(array[12]) << 24 |
        <u64>unchecked(array[13]) << 16 |
        <u64>unchecked(array[14]) <<  8 |
        <u64>unchecked(array[15]) <<  0,

        <u64>unchecked(array[0]) << 56 |
        <u64>unchecked(array[1]) << 48 |
        <u64>unchecked(array[2]) << 40 |
        <u64>unchecked(array[3]) << 32 |
        <u64>unchecked(array[4]) << 24 |
        <u64>unchecked(array[5]) << 16 |
        <u64>unchecked(array[6]) <<  8 |
        <u64>unchecked(array[7]) <<  0,
      );
    }

    /**
     * Create 128-bit unsigned integer from generic type T
     * @param  value
     * @returns 128-bit unsigned integer
     */
    @inline
    static from<T>(value: T): u128 {
           if (value instanceof bool)   return u128.fromU64(<u64>value);
      else if (value instanceof i8)     return u128.fromI64(<i64>value);
      else if (value instanceof u8)     return u128.fromU64(<u64>value);
      else if (value instanceof i16)    return u128.fromI64(<i64>value);
      else if (value instanceof u16)    return u128.fromU64(<u64>value);
      else if (value instanceof i32)    return u128.fromI64(<i64>value);
      else if (value instanceof u32)    return u128.fromU64(<u64>value);
      else if (value instanceof i64)    return u128.fromI64(<i64>value);
      else if (value instanceof u64)    return u128.fromU64(<u64>value);
      else if (value instanceof f32)    return u128.fromF64(<f64>value);
      else if (value instanceof f64)    return u128.fromF64(<f64>value);
      else if (value instanceof i128)   return u128.fromI128(<i128>value);
      else if (value instanceof u128)   return u128.fromU128(<u128>value);
      else if (value instanceof i256)   return u128.fromI256(<i256>value);
      else if (value instanceof u256)   return u128.fromU256(<u256>value);
      else if (value instanceof u8[])   return u128.fromBytes(<u8[]>value);
      else if (value instanceof String) return u128.fromString(<string>value);
      else throw new TypeError("Unsupported generic type");
    }

    @inline @operator.prefix('++')
    preInc(): this {
      assert(this.lo != <u64>-1 && this.hi != <u64>-1, "overflow");
      // TODO
      // super.preInc();
      return this;
    }

    @inline @operator.prefix('--')
    preDec(): this {
      assert(this.hi != 0 && this.lo != 0, "overflow");
      // TODO
      // super.preDec();
      return this;
    }

    @inline @operator('+')
    static add(a: u128, b: u128): u128 {
      var bl = b.lo;
      var lo = a.lo + bl;
      var c  = <u64>(lo < bl);
      var x  = a.hi;
      var y  = b.hi;
      var hi = x + y + c;
      if (((hi ^ x) & (hi ^ y)) < c) {
        throw new Error('Overflow');
      }
      return new u128(lo, hi);
    }

    @inline @operator('-')
    static sub(a: u128, b: u128): u128 {
      // underflow guard
      assert(a >= b, "overflow");
      return changetype<u128>(
        U128.sub(changetype<U128>(a), changetype<U128>(b))
      );
    }

    @inline @operator('*')
    static mul(a: u128, b: u128): u128 {
      // count leading zero bits for operands
      var azn = u128.clz(a);
      var bzn = u128.clz(b);

      // if a == 0 || b == 0
      if (!(azn - 128 & bzn - 128))
        return u128.Zero;

      // overflow guard
      assert(azn + bzn >= 127, "overflow");

      return changetype<u128>(
        U128.mul(changetype<U128>(a), changetype<U128>(b))
      );
    }

    @inline @operator('**')
    static pow(base: u128, exponent: i32): u128 {
      if (exponent > 1 && base > u128.One) {
        assert(exponent <= 128, "overflow");
        assert(u128.clz(base) * exponent <= 128);
      }

      return changetype<u128>(U128.pow(changetype<U128>(base), exponent));
    }

    //
    // unsigned div and rem already contain traps
    //

    clone(): u128 {
      return new u128(this.lo, this.hi);
    }
  }
// }
