import { u128 as U128 } from '../u128';

// @external("safe_u128.spec.as", "logStr")
// declare function logStr(str: string): void;

// @external("safe_u128.spec.as", "logF64")
// declare function logF64(v: f64): void;

// export namespace safe {
  export class u128 extends U128 {

    static readonly Zero: u128 = new u128()
    static readonly One:  u128 = new u128(1)
    static readonly Min:  u128 = u128.Zero
    static readonly Max:  u128 = new u128(-1, -1)

    @inline @operator.prefix('++')
    preInc(): this {
      if (this.lo == <u64>-1) {
        assert(this.hi != <u64>-1, "overflow");
      }

      // TODO
      // super.inc();
      return this;
    }

    @inline @operator.prefix('--')
    preDec(): this {
      if (!this.hi) {
        assert(this.lo, "overflow");
      }

      // TODO
      // super.dec();
      return this;
    }

    @inline @operator('+')
    static add(a: u128, b: u128): u128 {
      assert(a, "value shouldn't be null");
      assert(b, "value shouldn't be null");

      var bl = b.lo;
      var lo = a.lo + bl;
      var c  = lo < bl;
      var x  = a.hi;
      var y  = b.hi;
      var hi = x + y + <u64>c;
      /*
      if (hi < x + <u64>c) {
        throw new Error('Overflow');
      }
      */
      var out = new u128(lo, hi);
      if (out < a) { // TODO find better way
        throw new Error('Overflow');
      }
      return out;
    }

    @inline @operator('-')
    static sub(a: u128, b: u128): u128 {
      assert(a, "value shouldn't be null");
      assert(b, "value shouldn't be null");
      // underflow guard
      assert(changetype<U128>(a) >= changetype<U128>(b), "overflow");
      return changetype<u128>(
        U128.sub(changetype<U128>(a), changetype<U128>(b))
      );
    }

    @inline @operator('*')
    static mul(a: u128, b: u128): u128 {
      assert(a, "value shouldn't be null");
      assert(b, "value shouldn't be null");

      // count leading zero bits for operands
      var azn = u128.clz(a);
      var bzn = u128.clz(b);

      // overflow guard
      assert(azn + bzn >= 128, "overflow");

      // if a == 0 || b == 0
      if (!(azn - 128 & bzn - 128))
        return u128.Zero;

      // if a == 1 || b == 1
      if (azn == 127) return b.clone();
      if (bzn == 127) return a.clone();

      return changetype<u128>(
        U128.mul(changetype<U128>(a), changetype<U128>(b))
      );
    }

    @inline @operator('**')
    static pow(base: u128, exponent: i32): u128 {
      assert(base, "value shouldn't be null");
      assert(exponent <= 128, "overflow");
      if (exponent > 1 && !U128.isZero(base)) {
        assert(base.lo != 0, "overflow");
      }
      // TODO assert overflow

      return changetype<u128>(U128.pow(changetype<U128>(base), exponent));
    }

    //
    // unsigned div and rem already contain traps
    //
  }
// }
