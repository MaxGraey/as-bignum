export class f128 {

  @inline
  static fromBits(value: u128) {
    return new f128(value.lo, value.hi);
  }

  constructor(
    public lo: u64 = 0,
    public hi: u64 = 0,
  ) {}

  // TODO
}
