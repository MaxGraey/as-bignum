import 'allocator/arena';
import { u128 } from '../../assembly/integer/safe/u128';

declare function logStr(str: string): void;
declare function logU128Packed(msg: string, lo: f64, hi: f64): void;
declare function logF64(val: f64): void;

function logU128(value: u128, msg: string = null): void {
  assert(value);
  logU128Packed(msg,
    reinterpret<f64>(value.lo),
    reinterpret<f64>(value.hi)
  );
}

export class BasicOperationsTests {
  static shouldAddTwoNumbers(): bool {
    var a = new u128(100, 255);
    var b = new u128(255, 100);
    return a + b == new u128(355, 355);
  }

  static shouldSubtractTwoNumbers(): bool {
    var a = new u128(355, 355);
    var b = new u128(100, 255);
    return a - b == new u128(255, 100);
  }
}

export class OverflowUnderflowThrowableTests {
  static shouldThrowWhenAddTwoNumbers1(): bool {
    var a = u128.One;
    var b = u128.Max;
    return !(a + b);
  }
}
