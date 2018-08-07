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
  static shouldAddTwoNumbers1(): bool {
    var a = new u128(100, 255);
    var b = new u128(255, 100);
    return a + b == new u128(355, 355);
  }

  static shouldAddTwoNumbers2(): bool {
    var a = u128.Max;
    var b = u128.Zero;
    return a + b == u128.Max;
  }

  static shouldAddTwoNumbers3(): bool {
    var a = u128.from(-2);
    var b = u128.One;
    return a + b == u128.Max;
  }

  static shouldSubtractTwoNumbers1(): bool {
    var a = new u128(355, 355);
    var b = new u128(100, 255);
    return a - b == new u128(255, 100);
  }

  static shouldSubtractTwoNumbers2(): bool {
    var a = u128.Max;
    var b = u128.Max;
    return a - b == u128.Zero;
  }

  static shouldSubtractTwoNumbers3(): bool {
    var a = u128.Max;
    var b = u128.Zero;
    return a - b == u128.Max;
  }

  static shouldMultiplyTwoNumbers(): bool {
    var a = u128.from(43545453452);
    var b = u128.from(2353454354);
    return a * b == new u128(10248516654965971928, 5);
  }
}

export class OverflowUnderflowThrowableTests {
  static shouldThrowWhenAddTwoNumbers1(): bool {
    var a = u128.One;
    var b = u128.Max;
    return !(a + b);
  }

  static shouldThrowWhenAddTwoNumbers2(): bool {
    var a = u128.Max;
    var b = u128.One;
    return !(a + b);
  }

  static shouldThrowWhenAddTwoNumbers3(): bool {
    var a = u128.from(-2);
    var b = new u128(2);
    return !(a + b);
  }

  static shouldThrowWhenSubtractTwoNumbers1(): bool {
    var a = u128.Zero;
    var b = u128.Max;
    return !(a - b);
  }

  static shouldThrowWhenSubtractTwoNumbers2(): bool {
    var a = u128.from(-2);
    var b = u128.Max;
    return !(a - b);
  }

  static shouldThrowWhenSubtractTwoNumbers3(): bool {
    var a = u128.Zero;
    var b = u128.One;
    return !(a - b);
  }

  static shouldMultiplyTwoNumbersWithOverflow1(): bool {
    var a = new u128(0, 1);
    return !(a * a);
  }

  static shouldMultiplyTwoNumbersWithOverflow2(): bool {
    var a = new u128(1, 1);
    return !(a * a);
  }
}
