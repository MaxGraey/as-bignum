
import { u128 } from './u128';

export class i128 {

  static readonly Zero: i128 = new i128()
  static readonly One:  i128 = new i128(1)
  static readonly Min:  i128 = new i128(0, 0x8000000000000000)
  static readonly Max:  i128 = new i128(u64.MAX_VALUE, 0x7FFFFFFFFFFFFFFF)

  constructor(
    public lo: i64 = 0,
    public hi: i64 = 0,
  ) {}

  @inline
  isNegative(): bool {
    return <bool>(this.hi >> 63);
  }

  @inline
  isZero(): bool {
    return !(this.lo | this.hi);
  }

  @inline @operator.prefix('!')
  static isEmpty(value: i128): bool {
    return !value || !value.isZero();
  }

  @inline @operator.prefix('-')
  neg(): i128 {
    var lo = ~this.lo, hi = ~this.hi;
    var cy = ((lo & 1) + (lo >> 1)) >> 63;
    return new i128(lo + 1, hi + cy);
  }

  /*
  @inline
  static abs(value: i128): i128 {
    return value < 0 ? value.neg() : value;
  }
  */

  // TODO
}
