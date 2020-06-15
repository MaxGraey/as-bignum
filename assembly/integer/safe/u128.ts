import { u256 } from './u256';
import { i128 } from './i128';
import { i256 } from './i256';
import { u128 as U128 } from '../u128';
import { u256 as U256 } from '../u256';
import { i128 as I128 } from '../i128';
import { i256 as I256 } from '../i256';
import { isPowerOverflow128, atou128 } from '../../utils';

// @external("safe_u128.spec.as", "logStr")
// declare function logStr(str: string): void;

// @external("safe_u128.spec.as", "logF64")
// declare function logF64(v: f64): void;

// export namespace safe {
export class u128 extends U128 {

  @inline static get Zero(): u128 { return new u128(); }
  @inline static get One():  u128 { return new u128(1); }
  @inline static get Min():  u128 { return new u128(); }
  @inline static get Max():  u128 { return new u128(-1, -1); }

  @inline
  static fromString(value: string, radix: i32 = 10): u128 {
    return changetype<u128>(atou128(value, radix));
  }

  @inline
  static fromI256(value: i256): u128 {
    return changetype<u128>(U128.fromI256(value));
  }

  @inline
  static fromU256(value: u256): u128 {
    return changetype<u128>(U128.fromU256(value));
  }

  @inline
  static fromI128(value: i128): u128 {
    return changetype<u128>(U128.fromI128(value));
  }

  @inline
  static fromU128(value: u128): u128 {
    return changetype<u128>(U128.fromU128(value));
  }

  @inline
  static fromI64(value: i64): u128 {
    return changetype<u128>(U128.fromI64(value));
  }

  @inline
  static fromU64(value: u64): u128 {
    return changetype<u128>(U128.fromU64(value));
  }

  @inline
  static fromF64(value: f64): u128 {
    return changetype<u128>(U128.fromF64(value));
  }

  @inline
  static fromF32(value: f32): u128 {
    return changetype<u128>(U128.fromF32(value));
  }

  @inline
  static fromI32(value: i32): u128 {
    return changetype<u128>(U128.fromI32(value));
  }

  @inline
  static fromU32(value: u32): u128 {
    return changetype<u128>(U128.fromU32(value));
  }

  @inline
  static fromBool(value: bool): u128 {
    return changetype<u128>(U128.fromBool(value));
  }

  @inline
  static fromBits(lo1: u32, lo2: u32, hi1: u32, hi2: u32): u128 {
    return changetype<u128>(U128.fromBits(lo1, lo2, hi1, hi2));
  }

  @inline
  static fromBytes(array: u8[], bigEndian: bool = false): u128 {
    return changetype<u128>(U128.fromBytes(array, bigEndian));
  }

  @inline
  static fromBytesLE(array: u8[]): u128 {
    return changetype<u128>(U128.fromBytesLE(array));
  }

  @inline
  static fromBytesBE(array: u8[]): u128 {
    return changetype<u128>(U128.fromBytesBE(array));
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
    else if (value instanceof U128)   return u128.fromU128(<U128>value);
    else if (value instanceof i256)   return u128.fromI256(<i256>value);
    else if (value instanceof u256)   return u128.fromU256(<u256>value);
    else if (value instanceof u8[])   return u128.fromBytes(<u8[]>value);
    else if (value instanceof String) return u128.fromString(<string>value);
    else throw new TypeError("Unsupported generic type");
  }

  @operator.prefix('++')
  preInc(): this {
    if ((this.lo & this.hi) == <u64>-1) { // if this == max
      throw new RangeError('Overflow during prefix incrementing');
    }
    super.preInc();
    return this;
  }

  @operator.prefix('--')
  preDec(): this {
    if ((this.lo | this.hi) == 0) { // if this == 0
      throw new RangeError('Underflow during prefix decrementing');
    }
    super.preDec();
    return this;
  }

  @operator.postfix('++')
  postInc(): u128 {
    return this.clone().preInc();
  }

  @operator.postfix('--')
  postDec(): u128 {
    return this.clone().preDec();
  }

  @operator('+')
  static add(a: u128, b: u128): u128 {
    var bl = b.lo;
    var lo = a.lo + bl;
    var c  = u64(lo < bl);
    var x  = a.hi;
    var y  = b.hi;
    var hi = x + y + c;
    if (((hi ^ x) & (hi ^ y)) < c) {
      throw new RangeError('Overflow during addision');
    }
    return new u128(lo, hi);
  }

  @operator('-')
  static sub(a: u128, b: u128): u128 {
    if (a < b) {
      throw new RangeError("Underflow during substraction");
    }
    return changetype<u128>(
      U128.sub(changetype<U128>(a), changetype<U128>(b))
    );
  }

  @operator('*')
  static mul(a: u128, b: u128): u128 {
    if (a.isZero() || b.isZero()) {
      return u128.Zero;
    }
    var s = u128.clz(a) + u128.clz(b);
    if (s < 127) { // defenitely overflow
      throw new RangeError("Overflow during multiplication");
    }
    if (s == 127) { // this may overflow or not. Need extra checks.
      // See Hacker's Delight, 2nd Edition. 2–13 Overflow Detection
       // @ts-ignore
      let tmp = U128.mul(changetype<U128>(a), changetype<U128>(b) >> 1);
      // @ts-ignore
      if (tmp.hi >>> 63) { // (signed)t < 0
        throw new RangeError("Overflow during multiplication");
      }
      // @ts-ignore
      let z = tmp << 1;
      if (b.lo & 1) {
        // @ts-ignore
        z += a;
        // @ts-ignore
        if (z < a) {
          throw new RangeError("Overflow during multiplication");
        }
      }
      return changetype<u128>(z);
    }
    return changetype<u128>(
      U128.mul(changetype<U128>(a), changetype<U128>(b))
    );
  }

  @operator('**')
  static pow(base: u128, exponent: i32): u128 {
    if (isPowerOverflow128(base, exponent)) {
      throw new Error("Overflow during exponentiation");
    }
    return changetype<u128>(U128.pow(changetype<U128>(base), exponent));
  }

  @inline
  toUnchecked(): U128 {
    return changetype<U128>(this);
  }

  @inline
  as<T>(): T {
    var dummy: T;

         if (dummy instanceof bool)   return <T>this.toBool();
    else if (dummy instanceof i8)     return <T>this.toI64();
    else if (dummy instanceof u8)     return <T>this.toU64();
    else if (dummy instanceof i16)    return <T>this.toI64();
    else if (dummy instanceof u16)    return <T>this.toU64();
    else if (dummy instanceof i32)    return <T>this.toI64();
    else if (dummy instanceof i64)    return <T>this.toI64();
    else if (dummy instanceof u32)    return <T>this.toU64();
    else if (dummy instanceof u64)    return <T>this.toU64();
    else if (dummy instanceof f32)    return <T>this.toF64();
    else if (dummy instanceof f64)    return <T>this.toF64();
    else if (dummy instanceof i128)   return <T>this.toI128();
    else if (dummy instanceof u128)   return <T>this;
    else if (dummy instanceof U128)   return <T>this.toUnchecked();
    else if (dummy instanceof u256)   return <T>this.toU256();
    else if (dummy instanceof U256)   return <T>this.toU256();
    else if (dummy instanceof u8[])   return <T>this.toBytes();
    else if (dummy instanceof String) return <T>this.toString();
    else throw new TypeError('Unsupported generic type');
  }

  //
  // unsigned div and rem already contain traps
  //

  @inline
  clone(): u128 {
    return new u128(this.lo, this.hi);
  }
}
