import 'allocator/arena';
import { u128 } from '../../assembly/integer/u128';
import { __clz128 } from '../../assembly/globals';

declare function logString(len: i32, pointer: usize): void;

export class StringConversionTest {
  static shouldConvertToDecimalString1(): boolean {
    var a = new u128(10248516654965971928, 5);
    return '102482237023513730008' == a.toString();
  }

  static shouldConvertToDecimalString2(): boolean {
    var a = new u128(0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF);
    return '340282366920938463463374607431768211455' == a.toString();
  }

  static shouldConvertToDecimalString3(): boolean {
    var a = u128.Zero;
    return '0' == a.toString();
  }
}

export class BasicOperationsTest {
  static shouldEquateTwoNumbers(): boolean {
    var a = new u128(100, 255);
    var b = new u128(100, 255);
    return a == b;
  }

  static shouldNonEquateTwoNumbers(): boolean {
    var a = new u128(1, 1);
    var b = new u128(1, 0);
    return a != b;
  }

  static shouldCompareLessTwoNumbers1(): boolean {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    return b < a;
  }

  static shouldCompareLessTwoNumbers2(): boolean {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    return !(b < a);
  }

  static shouldCompareLessOrEqualTwoNumbers1(): boolean {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    return b <= a;
  }

  static shouldCompareLessOrEqualTwoNumbers2(): boolean {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    return b <= a;
  }

  static shouldCompareGreaterTwoNumbers1(): boolean {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    return a > b;
  }

  static shouldCompareGreaterTwoNumbers2(): boolean {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    return !(a > b);
  }

  static shouldCompareGreaterOrEqualTwoNumbers1(): boolean {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    return a >= b == true;
  }

  static shouldCompareGreaterOrEqualTwoNumbers2(): boolean {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    return a >= b == true;
  }

  static shouldAddTwoNumbers(): boolean {
    var a = new u128(100, 255);
    var b = new u128(255, 100);
    return a + b == new u128(355, 355);
  }

  static shouldSubtractTwoNumbers1(): boolean {
    var a = new u128(355, 355);
    var b = new u128(100, 255);
    return a - b == new u128(255, 100);
  }

  static shouldSubtractFromZeroEqualNegativeNumber(): boolean {
    var a = new u128(100, 255);
    return u128.Zero - a == -a;
  }

  static shouldLeftShiftOneNumber1(): boolean {
    var a = new u128(1, 0);
    return a << 65 == new u128(0, 2);
  }

  static shouldPeriodicLeftShiftOneNumber(): boolean {
    var a = new u128(1, 0);
    return a << (65 + 128) == new u128(0, 2);
  }

  static shouldInvariantLeftShiftZeroNumber(): boolean {
    var a = new u128(1, 1);
    return a << 0 == a;
  }

  static shouldRightShiftOneNumber(): boolean {
    var a = new u128(0, 100);
    return a >> 65 == new u128(50, 0);
  }

  static shouldPeriodicRightShiftOneNumber(): boolean {
    var a = new u128(0, 100);
    return a >> (65 + 128) == new u128(50, 0);
  }

  static shouldInvariantRightShiftZeroNumber(): boolean {
    var a = new u128(1, 1);
    return a >> 0 == a;
  }

  static shouldMultiplyTwoNumbers(): boolean {
    var a = u128.from(43545453452);
    var b = u128.from(2353454354);
    return a * b == new u128(10248516654965971928, 5);
  }

  static shouldPrefixIncrementNumber1(): boolean {
    var a = new u128(10248516654965971928, 5);
    ++a;
    return a == new u128(10248516654965971929, 5);
  }

  static shouldPrefixIncrementNumber2(): boolean {
    var a = new u128(0xFFFFFFFFFFFFFFFF, 0);
    ++a;
    return a == new u128(0, 1);
  }

  static shouldPrefixDecrementNumber1(): boolean {
    var a = new u128(10248516654965971928, 5);
    --a;
    return a == new u128(10248516654965971927, 5);
  }

  static shouldPrefixDecrementNumber2(): boolean {
    var a = new u128(0, 1);
    --a;
    return a == new u128(0xFFFFFFFFFFFFFFFF, 0);
  }

}

export class DivisionAndModOperationTest {

  static shouldDivideTwoNumbersWithoutRemainder1(): boolean {
    let a = new u128(10248516657319426282,5);
    let b = u128.from(2353454354);
    return a / b == u128.from(43545453453);
  }

  static shouldDivideTwoNumbersWithoutRemainder2(): boolean {
    let a = new u128(10248516654965971928,5);
    let b = u128.from(43545453452);
    return a / b == u128.from(2353454354);
  }

  static shouldDivideTwoNumbersWithoutRemainder3(): boolean {
    let a = new u128(3152652666208173568,2);
    let b = u128.from(4354545345312);
    return a / b == u128.from(9196400);
  }

  static shouldDivideTwoNumbersWithRemainder1(): boolean {
    let a = new u128(3152652666208173568,2);
    let b = u128.from(43543534534534);
    return a / b == u128.from(919680);
  }

  static shouldDivideTwoNumbersWithRemainder2(): boolean {
    let a = new u128(3152652666208178,0);
    let b = u128.from(43543534534534);
    return a / b == u128.from(72);
  }

  static shouldModTwoNumbersWithoutRemainder1(): boolean {
    let a = new u128(10248516657319426282,5);
    let b = u128.from(2353454354);
    return a % b == u128.Zero;
  }

  static shouldModTwoNumbersWithoutRemainder2(): boolean {
    let a = new u128(10248516654965971928,5);
    let b = u128.from(43545453452);
    return a % b == u128.Zero;
  }

  static shouldModTwoNumbersWithRemainder1(): boolean {
    let a = new u128(3152652666208173568,2);
    let b = u128.from(43543534534534);
    return a % b == u128.from(22972907047680);
  }

  static shouldModTwoNumbersWithRemainder2(): boolean {
    let a = new u128(3152652666208178,0);
    let b = u128.from(43543534534534);
    return a % b == u128.from(17518179721730);
  }

  static shouldDivideTwoSameNumbers(): boolean {
    let a = new u128(10248516654965971928,5);
    return a / a == u128.One;
  }

  static shouldDivideZeroWithNumber(): boolean {
    let a = u128.Zero;
    let b = new u128(10248516654965971928,5);
    return a / b == u128.Zero;
  }

  static shouldDivideNumberWithOne(): boolean {
    let a = new u128(10248516654965971928,5);
    let b = u128.One;
    return a / b == a;
  }

  static shouldModNumberWithOne(): boolean {
    let a = new u128(10248516654965971928,5);
    let b = u128.One;
    return a % b == u128.Zero;
  }

  static shouldModNumberSameNumber(): boolean {
    let a = new u128(10248516654965971928,5);
    return a % a == u128.Zero;
  }

}
