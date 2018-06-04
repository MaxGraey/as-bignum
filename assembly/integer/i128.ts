
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
  isNeg(): bool {
    return <bool>(this.hi >> 63);
  }

  @inline
  isZero(): bool {
    return !(this.lo | this.hi);
  }

  @inline // @operator.prefix('!')
  static isEmpty(value: i128): bool {
    return !value || !value.isZero();
  }

  // TODO
}
