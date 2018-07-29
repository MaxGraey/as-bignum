import 'allocator/arena';
import { u128 } from '../../assembly/integer/u128';
import { __clz128 } from '../../assembly/globals';

declare function logString(len: i32, pointer: usize): void;

export class StringConversionTest {
  static shouldConvertToDecimalString1(): boolean {
    let a = new u128(10248516654965971928, 5);
    let stringA = a.toString();
    //logString(stringA.length, stringA.toUTF8());
    return '102482237023513730008' == stringA;
  }

  static shouldConvertToDecimalString2(): boolean {
    let a = new u128(0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF);
    return '340282366920938463463374607431768211455' == a.toString();
  }

  static shouldConvertToDecimalString3(): boolean {
    let a = u128.Zero;
    return '0' == a.toString();
  }
}

export class BasicOperationsTest {
  static shouldEquateTwoNumbers(): boolean {
    let a = new u128(100, 255);
    let b = new u128(100, 255);
    let eq = a == b;
    return eq == true;
  }

  static shouldNotEquateTwoNumbers(): boolean {
    let a = new u128(100, 255);
    let b = new u128(100, 256);
    let eq = a != b;
    return eq == true;
  }

  static shouldCompareLtTwoNumbers1(): boolean {
    let a = new u128(100, 100);
    let b = new u128(50,  100);
    let lt = b < a;
    return lt == true;
  }

  static shouldCompareLtTwoNumbers2(): boolean {
    let a = new u128(100, 100);
    let b = new u128(100, 100);
    let lt = b < a;
    return lt == false;
  }

  static shouldCompareLteTwoNumbers1(): boolean {
    let a = new u128(100, 100);
    let b = new u128(50,  100);
    let lt = b <= a;
    return lt == true;
  }

  static shouldCompareLteTwoNumbers2(): boolean {
    let a = new u128(100, 100);
    let b = new u128(100, 100);
    let lt = b <= a;
    return lt == true;
  }

  static shouldCompareGtTwoNumbers1(): boolean {
    let a = new u128(100, 100);
    let b = new u128(50,  100);
    let lt = a > b;
    return lt == true;
  }

  static shouldCompareGtTwoNumbers2(): boolean {
    let a = new u128(100, 100);
    let b = new u128(100, 100);
    let lt = a > b;
    return lt == false;
  }

  static shouldCompareGteTwoNumbers1(): boolean {
    let a = new u128(100, 100);
    let b = new u128(50,  100);
    let lt = a >= b;
    return lt == true;
  }

  static shouldCompareGteTwoNumbers2(): boolean {
    let a = new u128(100, 100);
    let b = new u128(100, 100);
    let lt = a >= b;
    return lt == true;
  }

  static shouldAddTwoNumbers(): boolean {
    let a = new u128(100, 255);
    let b = new u128(255, 100);
    let c = a + b;
    return c == new u128(355, 355);
  }

  static shouldSubtractTwoNumbers(): boolean {
    let c = new u128(355, 355);
    let b = new u128(100, 255);
    return c - b == new u128(255, 100);
  }

  static shouldLeftShiftOneNumber(): boolean {
    let a = new u128(1, 0);
    return a << 65 == new u128(0, 2);
  }

  static shouldRightShiftOneNumber(): boolean {
    let a = new u128(0, 100);
    return a >> 65 == new u128(50, 0);
  }

  static shouldMultiplyTwoNumbers(): boolean {
    let a = u128.from(43545453452);
    let b = u128.from(2353454354);
    let c = a * b;
    return c == new u128(10248516654965971928, 5);
  }

  static shouldIncrementNumber(): boolean {
    let a = new u128(10248516654965971928, 5);
    ++a;
    return a == new u128(10248516654965971929, 5);
  }

  static shouldDecrementNumber(): boolean {
    let a = new u128(10248516654965971928, 5);
    --a;
    return a == new u128(10248516654965971927, 5);
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
