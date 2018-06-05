import { i128 } from '../integer/i128';
import { u128 } from '../integer/u128';

// Support only this fractions:
// fp128<u8>  =>  8 bits
// fp128<u16> => 16 bits
// fp128<u32> => 32 bits

export class fp128<Q> {

  protected value: i128 = i128.Zero;

  constructor(lo: i64 = 0, hi: i64 = 0) {
    this.lo = lo;
    this.hi = hi;
  }

  @inline
  get fractBits(): i32 {
    return 8 * sizeof<Q>();
  }

  /*
  intPart(): i128 {
    return this.value >> (8 * sizeof<Q>);
  }
  */

  @inline
  get fractPart(): u128 {
    return u128.shl(changetype<u128>(this.value), 32 - 8 * sizeof<Q>);
  }

  // TODO
}
