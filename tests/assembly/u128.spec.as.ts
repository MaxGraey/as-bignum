import 'allocator/arena';
import { u128 } from '../../assembly/integer/u128';

declare function logString(len: i32, pointer: usize): void;

export class StringConversionTests {
  static shouldConvertToDecimalString1(): bool {
    var a = new u128(10248516654965971928, 5);
    return '102482237023513730008' == a.toString();
  }

  static shouldConvertToDecimalString2(): bool {
    var a = new u128(0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF);
    return '340282366920938463463374607431768211455' == a.toString();
  }

  static shouldConvertToDecimalString3(): bool {
    var a = u128.Zero;
    return '0' == a.toString();
  }
}

export class BasicOperationsTests {
  static shouldNumberIsZero1(): bool {
    var a = u128.Zero;
    return a.isZero();
  }

  static shouldNumberIsZero2(): bool {
    var a = u128.One;
    return !a.isZero();
  }

  static shouldNumberBinaryNot(): bool {
    var a = new u128(1, 2);
    return ~a == new u128(~1, ~2);
  }

  static shouldNumberUnaryPositive(): bool {
    var a = new u128(1, 2);
    return a == +a;
  }

  static shouldNumberNonEmpty(): bool {
    var a = u128.One;
    return !!a;
  }

  static shouldNumberIsEmpty1(): bool {
    var a = u128.Zero;
    return !a;
  }

  static shouldNumberIsEmpty3(): bool {
    var a: u128 = changetype<u128>(null);
    return !a;
  }

  static shouldBinaryOrNumbers(): bool {
    var a = new u128(0,   123);
    var b = new u128(111, 0);
    return (a | b) == new u128(111, 123);
  }

  static shouldBinaryXorNumbers(): bool {
    var a = new u128(111, 123);
    var b = new u128(111, 0);
    return (a ^ b) == new u128(0, 123);
  }

  static shouldBinaryAndNumbers(): bool {
    var a = new u128(0xFF00, 123);
    var b = new u128(0x00FF, 234);
    return (a & b) == new u128(0, 106);
  }

  static shouldEquateTwoNumbers(): bool {
    var a = new u128(100, 255);
    var b = new u128(100, 255);
    return a == b;
  }

  static shouldNonEquateTwoNumbers(): bool {
    var a = new u128(1, 1);
    var b = new u128(1, 0);
    return a != b;
  }

  static shouldCompareLessTwoNumbers1(): bool {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    return b < a;
  }

  static shouldCompareLessTwoNumbers2(): bool {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    return !(b < a);
  }

  static shouldCompareLessOrEqualTwoNumbers1(): bool {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    return b <= a;
  }

  static shouldCompareLessOrEqualTwoNumbers2(): bool {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    return b <= a;
  }

  static shouldCompareGreaterTwoNumbers1(): bool {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    return a > b;
  }

  static shouldCompareGreaterTwoNumbers2(): bool {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    return !(a > b);
  }

  static shouldCompareGreaterOrEqualTwoNumbers1(): bool {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    return a >= b == true;
  }

  static shouldCompareGreaterOrEqualTwoNumbers2(): bool {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    return a >= b == true;
  }

  static shouldAddTwoNumbers(): bool {
    var a = new u128(100, 255);
    var b = new u128(255, 100);
    return a + b == new u128(355, 355);
  }

  static shouldSubtractTwoNumbers1(): bool {
    var a = new u128(355, 355);
    var b = new u128(100, 255);
    return a - b == new u128(255, 100);
  }

  static shouldSubtractFromZeroEqualNegativeNumber(): bool {
    var a = new u128(100, 255);
    return u128.Zero - a == -a;
  }

  static shouldLeftShiftOneNumber1(): bool {
    var a = new u128(1, 0);
    return a << 65 == new u128(0, 2);
  }

  static shouldPeriodicLeftShiftOneNumber(): bool {
    var a = new u128(1, 0);
    return a << (65 + 128) == new u128(0, 2);
  }

  static shouldInvariantLeftShiftZeroNumber(): bool {
    var a = new u128(1, 1);
    return a << 0 == a;
  }

  static shouldRightShiftOneNumber(): bool {
    var a = new u128(0, 100);
    return a >> 65 == new u128(50);
  }

  static shouldPeriodicRightShiftOneNumber(): bool {
    var a = new u128(0, 100);
    return a >> (65 + 128) == new u128(50);
  }

  static shouldInvariantRightShiftZeroNumber(): bool {
    var a = new u128(1, 1);
    return a >> 0 == a;
  }

  static shouldMultiplyTwoNumbers(): bool {
    var a = u128.from(43545453452);
    var b = u128.from(2353454354);
    return a * b == new u128(10248516654965971928, 5);
  }

  static shouldMultiplyTwoNumbersWithOverflow1(): bool {
    var a = new u128(0, 1);
    return (a * a) == u128.Zero;
  }

  static shouldMultiplyTwoNumbersWithOverflow2(): bool {
    var a = new u128(1, 1);
    return (a * a) == new u128(1, 2);
  }

  static shouldPrefixIncrementNumber1(): bool {
    var a = new u128(10248516654965971928, 5);
    ++a;
    return a == new u128(10248516654965971929, 5);
  }

  static shouldPrefixIncrementNumber2(): bool {
    var a = new u128(0xFFFFFFFFFFFFFFFF, 0);
    ++a;
    return a == new u128(0, 1);
  }

  static shouldPrefixDecrementNumber1(): bool {
    var a = new u128(10248516654965971928, 5);
    --a;
    return a == new u128(10248516654965971927, 5);
  }

  static shouldPrefixDecrementNumber2(): bool {
    var a = new u128(0, 1);
    --a;
    return a == new u128(0xFFFFFFFFFFFFFFFF, 0);
  }
}

export class ExponentionOperationTests {
  static shouldPowerOfZeroReturnOneNumber(): bool {
    var a = new u128(-1, -1);
    return a ** 0 == u128.One;
  }

  static shouldPowerOfOneReturnSameNumber(): bool {
    var a = new u128(-1, -1);
    return a ** 1 == a;
  }

  static shouldPowerOfTwoReturnSquaredNumber1(): bool {
    var a = new u128(1);
    return (a ** 2) == (a * a);
  }

  static shouldPowerOfTwoReturnSquaredNumber2(): bool {
    var a = new u128(0xFFFFFFFF);
    return (a ** 2) == (a * a);
  }

  // FAIL
  // TODO need investigate u128#sqr
  /*static shouldPowerOfTwoReturnSquaredNumberWithOverflow(): bool {
    var a = new u128(0, 1);
    return (a ** 2) == u128.Zero;
  }*/
}

export class DivisionAndModOperationTests {
  static shouldDivideTwoNumbersWithoutRemainder1(): bool {
    let a = new u128(10248516657319426282, 5);
    let b = u128.from(2353454354);
    return a / b == u128.from(43545453453);
  }

  static shouldDivideTwoNumbersWithoutRemainder2(): bool {
    let a = new u128(10248516654965971928, 5);
    let b = u128.from(43545453452);
    return a / b == u128.from(2353454354);
  }

  static shouldDivideTwoNumbersWithoutRemainder3(): bool {
    let a = new u128(3152652666208173568, 2);
    let b = u128.from(4354545345312);
    return a / b == u128.from(9196400);
  }

  static shouldDivideTwoNumbersWithRemainder1(): bool {
    let a = new u128(3152652666208173568, 2);
    let b = u128.from(43543534534534);
    return a / b == u128.from(919680);
  }

  static shouldDivideTwoNumbersWithRemainder2(): bool {
    let a = new u128(3152652666208178,0);
    let b = u128.from(43543534534534);
    return a / b == u128.from(72);
  }

  static shouldModTwoNumbersWithoutRemainder1(): bool {
    let a = new u128(10248516657319426282, 5);
    let b = u128.from(2353454354);
    return a % b == u128.Zero;
  }

  static shouldModTwoNumbersWithoutRemainder2(): bool {
    let a = new u128(10248516654965971928, 5);
    let b = u128.from(43545453452);
    return a % b == u128.Zero;
  }

  static shouldModTwoNumbersWithRemainder1(): bool {
    let a = new u128(3152652666208173568, 2);
    let b = u128.from(43543534534534);
    return a % b == u128.from(22972907047680);
  }

  static shouldModTwoNumbersWithRemainder2(): bool {
    let a = new u128(3152652666208178);
    let b = u128.from(43543534534534);
    return a % b == u128.from(17518179721730);
  }

  static shouldDivideTwoSameNumbers(): bool {
    let a = new u128(10248516654965971928, 5);
    return a / a == u128.One;
  }

  static shouldDivideZeroWithNumber(): bool {
    let a = u128.Zero;
    let b = new u128(10248516654965971928, 5);
    return a / b == u128.Zero;
  }

  static shouldDivideNumberWithOne(): bool {
    let a = new u128(10248516654965971928, 5);
    let b = u128.One;
    return a / b == a;
  }

  static shouldModNumberWithOne(): bool {
    let a = new u128(10248516654965971928, 5);
    let b = u128.One;
    return a % b == u128.Zero;
  }

  static shouldModNumberSameNumber(): bool {
    let a = new u128(10248516654965971928, 5);
    return a % a == u128.Zero;
  }
}

export class DivisionAndModOperationThrowableTests {
  static shouldThrowWhenDivideNumberByZero(): bool {
    let a = new u128(1,1);
    return !(a / u128.Zero);
  }

  static shouldThrowWhenModNumberByZero(): bool {
    let a = new u128(1,1);
    return !(a % u128.Zero);
  }
}
