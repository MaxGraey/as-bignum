import 'allocator/arena';
import { u128 } from '../../assembly/integer/u128';

declare function logString(len : i32, pointer: usize) : void;

export class StringConversionTest {
  shouldConvertToString(): boolean {
    let a = new u128(10248516654965971928,5)
    let stringA = a.toString(10);
    //logString(stringA.length, stringA.toUTF8());
    return "102482237023513730008" == stringA;
  }
}

export class BasicOperationsTest {
  shouldAddTwoNumbers(): boolean {
    let a = new u128(100, 255);
    let b = new u128(255, 100);
    let c : u128 = a + b;
    return c == new u128(355, 355);
  }

  shouldSubtractTwoNumbers(): boolean {
    let c = new u128(355, 355);
    let b = new u128(100, 255);
    return c - b == new u128(255, 100);
  }

  shouldLeftShiftOneNumber(): boolean {
    let a = new u128(1, 0);
    return a << 65 == new u128(0, 2);
  }

  shouldRightShiftOneNumber(): boolean {
    let a = new u128(0, 100);
    return a >> 65 == new u128(50, 0);
  }

  shouldMultiplyTwoNumbers(): boolean {
    let a = u128.from(43545453452);
    let b = u128.from(2353454354);
    let c = a * b;
    return c == new u128(10248516654965971928,5);
  }

  shouldDivideTwoNumbers(): boolean {
    let a = u128.from(43545453452);
    let b = u128.from(2353454354);
    let c = new u128(10248516654965971928,5);
    return c / a == b;
  }

  shouldIncrementNumber(): boolean {
    let a = new u128(10248516654965971928,5);
    ++a;
    return a == new u128(10248516654965971929,5);
  }

  shouldDecrementNumber(): boolean {
    let a = new u128(10248516654965971928,5);
    --a;
    return a == new u128(10248516654965971927,5);
  }

}