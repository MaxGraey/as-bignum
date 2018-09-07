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

  static shouldMultiplyTwoNumbers1(): bool {
    var a = u128.from(43545453452);
    var b = u128.Zero;
    return a * b == u128.Zero;
  }

  static shouldMultiplyTwoNumbers2(): bool {
    var a = u128.from(43545453452);
    var b = u128.One;
    return a * b == a;
  }

  static shouldMultiplyTwoNumbers3(): bool {
    var a = u128.Max;
    var b = u128.One;
    return a * b == a;
  }

  static shouldMultiplyTwoNumbers4(): bool {
    var a = u128.from(43545453452);
    var b = u128.from(2353454354);
    return a * b == new u128(10248516654965971928, 5);
  }

  static shouldPowerNumber1(): bool {
    return u128.Zero ** 1024 == u128.Zero;
  }

  static shouldPowerNumber2(): bool {
    return u128.One ** 0 == u128.One;
  }

  static shouldPowerNumber3(): bool {
    return u128.One ** 1024 == u128.One;
  }

  static shouldPowerNumber4(): bool {
    return new u128(2) ** 127 == new u128(0, 0x8000000000000000);
  }

  static shouldPowerNumber5(): bool {
    return new u128(3) ** 80 == new u128(0x3CEA59789C79D441, 0x6F32F1EF8B18A2BC);
  }

  static shouldPowerNumber6(): bool {
    return new u128(4) ** 63 == new u128(0, 0x4000000000000000);
  }

  static shouldPowerNumber7(): bool {
    return new u128(5) ** 55 == new u128(0xFFF4B4E3F741CF6D, 0xD0CF4B50CFE20765);
  }

  static shouldPowerNumber8(): bool {
    return new u128(6) ** 49 == new u128(0x4286000000000000, 0x6558E2A0921FE069);
  }

  static shouldPowerNumber9(): bool {
    return new u128(0, 1) ** 1 == new u128(0, 1);
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

  static shouldMultiplyTwoNumbersWithOverflow3(): bool {
    var a = u128.Max;
    var b = u128.from(2);
    return !(a * b);
  }

  static shouldMultiplyTwoNumbersWithOverflow4(): bool {
    var a = u128.Max;
    var b = u128.Max;
    return !(a * b);
  }

  static shouldPowerWithOverflow1(): bool {
    return !(new u128(2) ** 128);
  }

  static shouldPowerWithOverflow2(): bool {
    return !(new u128(3) ** 81);
  }

  static shouldPowerWithOverflow3(): bool {
    return !(new u128(3) ** 120);
  }

  static shouldPowerWithOverflow4(): bool {
    return !(new u128(4) ** 64);
  }

  static shouldPowerWithOverflow5(): bool {
    return !(new u128(4) ** 120);
  }

  static shouldPowerWithOverflow6(): bool {
    return !(new u128(5) ** 56);
  }

  static shouldPowerWithOverflow7(): bool {
    return !(new u128(5) ** 60);
  }

  static shouldPowerWithOverflow8(): bool {
    return !(new u128(6) ** 50);
  }

  static shouldPowerWithOverflow9(): bool {
    return !(new u128(7) ** 49);
  }

  static shouldPowerWithOverflow10(): bool {
    return !(new u128(8) ** 43);
  }

  static shouldPowerWithOverflow11(): bool {
    return !(new u128(9) ** 41);
  }

  static shouldPowerWithOverflow12(): bool {
    return !(new u128(10) ** 39);
  }

  static shouldPowerWithOverflow13(): bool {
    return !(new u128(11) ** 38);
  }

  static shouldPowerWithOverflow14(): bool {
    return !(new u128(12) ** 36);
  }

  static shouldPowerWithOverflow15(): bool {
    return !(new u128(0, 1) ** 2);
  }
}
