import 'allocator/arena';
import { u128 } from '../../assembly/integer/u128';

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

  static shouldCompareLessTwoNumbers1(): boolean {
    let a = new u128(100, 100);
    let b = new u128(50,  100);
    let lt = b < a;
    return lt == true;
  }

  static shouldCompareLessTwoNumbers2(): boolean {
    let a = new u128(100, 100);
    let b = new u128(100, 100);
    let lt = b < a;
    return lt == false;
  }

  static shouldCompareLessOrEualTwoNumbers1(): boolean {
    let a = new u128(100, 100);
    let b = new u128(50,  100);
    let lt = b <= a;
    return lt == true;
  }

  static shouldCompareLessOrEualTwoNumbers2(): boolean {
    let a = new u128(100, 100);
    let b = new u128(100, 100);
    let lt = b <= a;
    return lt == true;
  }

  static shouldCompareGreaterTwoNumbers1(): boolean {
    let a = new u128(100, 100);
    let b = new u128(50,  100);
    let lt = a > b;
    return lt == true;
  }

  static shouldCompareGreaterTwoNumbers2(): boolean {
    let a = new u128(100, 100);
    let b = new u128(100, 100);
    let lt = a > b;
    return lt == false;
  }

  static shouldCompareGreaterOrEqualTwoNumbers1(): boolean {
    let a = new u128(100, 100);
    let b = new u128(50,  100);
    let lt = a >= b;
    return lt == true;
  }

  static shouldCompareGreaterOrEqualTwoNumbers2(): boolean {
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

  static shouldLeftShiftOneNumber1(): boolean {
    let a = new u128(1, 0);
    return a << 65 == new u128(0, 2);
  }

  static shouldPeriodicLeftShiftOneNumber(): boolean {
    let a = new u128(1, 0);
    return a << (65 + 128) == new u128(0, 2);
  }

  static shouldInvariantLeftShiftZeroNumber(): boolean {
    let a = new u128(1, 1);
    return a << 0 == a;
  }

  static shouldRightShiftOneNumber(): boolean {
    let a = new u128(0, 100);
    return a >> 65 == new u128(50, 0);
  }

  static shouldPeriodicRightShiftOneNumber(): boolean {
    let a = new u128(0, 100);
    return a >> (65 + 128) == new u128(50, 0);
  }

  static shouldInvariantRightShiftZeroNumber(): boolean {
    let a = new u128(1, 1);
    return a >> 0 == a;
  }

  static shouldMultiplyTwoNumbers(): boolean {
    let a = u128.from(43545453452);
    let b = u128.from(2353454354);
    let c = a * b;
    return c == new u128(10248516654965971928, 5);
  }

  // static shouldDivideTwoNumbers(): boolean {
  //   let a = u128.from(43545453452);
  //   let b = u128.from(2353454354);
  //   let c = new u128(10248516654965971928,5);
  //   return c / a == b;
  // }

  static shouldIncrementNumber1(): boolean {
    let a = new u128(10248516654965971928, 5);
    ++a;
    return a == new u128(10248516654965971929, 5);
  }

  static shouldIncrementNumber2(): boolean {
    let a = new u128(0xFFFFFFFFFFFFFFFF, 0);
    ++a;
    return a == new u128(0, 1);
  }

  static shouldDecrementNumber1(): boolean {
    let a = new u128(10248516654965971928, 5);
    --a;
    return a == new u128(10248516654965971927, 5);
  }

  static shouldDecrementNumber2(): boolean {
    let a = new u128(0, 1);
    --a;
    return a == new u128(0xFFFFFFFFFFFFFFFF, 0);
  }

}
