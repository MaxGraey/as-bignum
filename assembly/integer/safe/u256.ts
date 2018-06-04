import { u256 as unsafeU256 } from '../u256';

export namespace safe {
  export class u256 extends unsafeU256 {
    // TODO override add, sub, inc, dec, mul, div, rem operators
  }
}
