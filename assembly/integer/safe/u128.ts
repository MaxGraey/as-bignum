import { u128 as U128 } from '../u128';

export namespace safe {
  export class u128 extends U128 {

    @inline @operator.prefix('++')
    preInc(): this {
      if (this.lo == <u64>-1) assert(this.hi != <u64>-1);

      // TODO
      // super.inc();
      return this;
    }

    @inline @operator.prefix('--')
    preDec(): this {
      if (!this.hi) assert(this.lo);

      // TODO
      // super.dec();
      return this;
    }

    @inline @operator('+')
    static add(a: u128, b: u128): u128 {
      assert(a, "value shouldn't be null");
      assert(b, "value shouldn't be null");
      // overflow guard
      assert(clz(a.hi) | clz(b.hi));
      return changetype<u128>(
        U128.add(changetype<U128>(a), changetype<U128>(b))
      );
    }

    @inline @operator('-')
    static sub(a: u128, b: u128): u128 {
      assert(a, "value shouldn't be null");
      assert(b, "value shouldn't be null");
      // underflow guard
      assert(changetype<U128>(a) >= changetype<U128>(b));
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
      assert(azn + bzn >= 128);

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
      assert(exponent <= 128);
      // TODO assert overflow

      return changetype<u128>(U128.pow(changetype<U128>(base), exponent));
    }

    //
    // div and rem already contain traps
    //
  }
}
