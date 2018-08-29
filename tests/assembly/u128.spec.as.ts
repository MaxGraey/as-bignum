import 'allocator/arena';
import { u128 } from '../../assembly/integer/u128';

declare function logStr(str: string | null): void;
declare function logU128Packed(msg: string | null, lo: f64, hi: f64): void;
declare function logF64(val: f64): void;

function logU128(value: u128, msg: string | null = null): void {
  assert(value);
  logU128Packed(msg,
    reinterpret<f64>(value.lo),
    reinterpret<f64>(value.hi)
  );
}

export class StringConversionTests {
  static shouldConvertToDecimalString1(): bool {
    var a = new u128(10248516654965971928, 5);
    return '102482237023513730008' == a.toString();
  }

  static shouldConvertToDecimalString2(): bool {
    var a = u128.Max;
    return '340282366920938463463374607431768211455' == a.toString();
  }

  static shouldConvertToDecimalString3(): bool {
    var a = u128.Zero;
    return '0' == a.toString();
  }

  static shouldConvertFromDecimalString1(): bool {
    return u128.from('') == u128.Zero;
  }

  static shouldConvertFromDecimalString2(): bool {
    return u128.from('0') == u128.Zero;
  }

  static shouldConvertFromDecimalString3(): bool {
    return u128.from('123456789') == new u128(123456789);
  }

  static shouldConvertFromDecimalString4(): bool {
    return u128.from('340282366920938463463374607431768211455') == u128.Max;
  }

  static shouldConvertFromDecimalString5(): bool {
    return u128.from('-123456789') == u128.from(-123456789);
  }

  static shouldConvertFromDecimalString6(): bool {
    return u128.from('+123456789') == new u128(123456789);
  }

  static shouldConvertFromDecimalString7(): bool {
    return u128.fromString('123456789', 10) == new u128(123456789);
  }

  static shouldConvertFromDecimalWithInvalidCharsString1(): bool {
    return u128.from('00000123abc') == new u128(123);
  }

  static shouldConvertFromDecimalWithInvalidCharsString2(): bool {
    return u128.from('x00000123abc') == u128.Zero;
  }

  static shouldConvertFromDecimalWithInvalidCharsString3(): bool {
    return u128.from('-x') == u128.Zero;
  }

  static shouldConvertFromDecimalWithInvalidCharsString4(): bool {
    return u128.from('--01234') == u128.Zero;
  }

  static shouldConvertFromDecimalWithInvalidCharsString5(): bool {
    return u128.from('123\u3012') == new u128(123);
  }

  static shouldConvertFromDecimalWithInvalidCharsString6(): bool {
    return u128.from(String.fromCodePoint(0x10000)) == u128.Zero;
  }

  static shouldConvertFromDecimalWithInvalidCharsString7(): bool {
    return u128.from('{0123') == u128.Zero;
  }

  static shouldConvertFromDecimalWithInvalidCharsString8(): bool {
    return u128.from('/0123') == u128.Zero;
  }

  static shouldConvertFromHexString(): bool {
    return u128.fromString('123456abcdef', 16) == new u128(0x123456abcdef);
  }

  static shouldConvertFromMixedCaseHexString(): bool {
    return u128.from('0xabcdefABCDEF') == new u128(0xabcdefABCDEF);
  }

  static shouldConvertFromOctalString(): bool {
    return u128.from('0o01234567') == u128.from(0o01234567);
  }

  static shouldConvertFromBinaryString(): bool {
    return u128.from('0b10101010101010101010') == u128.from(0b10101010101010101010);
  }
}

export class BufferConversionTests {
  static shouldConvertFromBytesLittleEndian(): bool {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    return u128.fromBytes(arr) == new u128(0x8877665544332211, 0x12ffeeddccbbaa99);
  }

  static shouldConvertFromBytesBigEndian(): bool {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    return u128.fromBytes(arr, true) == new u128(0x99aabbccddeeff12, 0x1122334455667788);
  }

  static shouldConvertToBytesLitteEndian(): bool {
    // var a: u8[] = (new u128(0x8877665544332211, 0x12ffeeddccbbaa99)).toBytes();
    var u = new u128(0x8877665544332211, 0x12ffeeddccbbaa99);
    var a = u.toBytes();
    return (
      a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
      a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
      a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
      a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12
    );
  }

  static shouldConvertToBytesBigEndian(): bool {
    var u = new u128(0x99aabbccddeeff12, 0x1122334455667788);
    var a = u.toBytes(true);
    return (
      a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
      a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
      a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
      a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12
    );
  }
}

export class BasicTypeConversionTests {
  static shouldConvertFromInteger1(): bool {
    var a = u128.from(-1);
    return a.lo == u64.MAX_VALUE && a.hi == u64.MAX_VALUE;
  }

  static shouldConvertToUinsignedLongInt1(): bool {
    var a = u128.Max;
    return a.as<u64>() == u64.MAX_VALUE;
  }

  static shouldConvertToSignedLongInt1(): bool {
    var a = u128.from(-123456789);
    return a.as<i64>() == -123456789;
  }

  static shouldConvertToSignedLongInt2(): bool {
    var a = u128.Max;
    return a.as<i64>() == <i64>-1;
  }

  static shouldConvertToUnsignedByte(): bool {
    var a = u128.Max;
    return a.as<u8>() == 0xFF;
  }

  static shouldConvertToDouble1(): bool {
    var a = u128.Zero;
    return a.as<f64>() == 0.0;
  }

  static shouldConvertToDouble2(): bool {
    var a = u128.One;
    return a.as<f64>() == 1.0;
  }

  static shouldConvertToDouble3(): bool {
    var a = new u128(33333);
    return a.as<f64>() == 33333.0;
  }

  static shouldConvertToDoubleMaxSafeLongInteger(): bool {
    var a = new u128(9007199254740991);
    return a.as<f64>() == 9007199254740991.0;
  }

  static shouldConvertMaximumToDouble(): bool {
    var a = u128.Max;
    return a.as<f64>() == 340282366920938463463374607431768211455.0;
  }

  static shouldConvertToDouble4(): bool {
    var a = new u128(1 << 54);
    return a.as<f64>() == 18014398509481984.0;
  }

  static shouldConvertToDouble5(): bool {
    var a = new u128(1 << 55);
    return a.as<f64>() == 36028797018963970.0;
  }

  static shouldConvertToDouble6(): bool {
    var a = new u128(1 << 56);
    return a.as<f64>() == 72057594037927940.0;
  }

  static shouldConvertToDouble7(): bool {
    var a = new u128(1 << 57);
    return a.as<f64>() == 144115188075855870.0;
  }

  static shouldConvertToDouble8(): bool {
    var a = new u128(1 << 63);
    return a.as<f64>() == 9223372036854776000.0;
  }

  static shouldConvertToDouble9(): bool {
    var a = new u128(u64.MAX_VALUE);
    return a.as<f64>() == 18446744073709552000.0;
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

  static shouldNumberIsEmpty2(): bool {
    return !changetype<u128>(null);
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

  static shouldEqualTwoNumbers(): bool {
    var a = new u128(100, 255);
    var b = new u128(100, 255);
    return a == b;
  }

  static shouldNonEqualTwoNumbers(): bool {
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

  static shouldCompareLessTwoNumbers3(): bool {
    var a = u128.One;
    var b = u128.Max;
    return a < b;
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

  static shouldAddTwoNumbers1(): bool {
    var a = new u128(100, 255);
    var b = new u128(255, 100);
    return a + b == new u128(355, 355);
  }

  static shouldAddTwoNumbers2(): bool {
    var a = u128.from(-2);
    var b = u128.One;
    return a + b == u128.Max;
  }

  static shouldSubtractTwoNumbers(): bool {
    var a = new u128(355, 355);
    var b = new u128(100, 255);
    return a - b == new u128(255, 100);
  }

  static shouldSubtractFromZeroEqualNegativeNumber(): bool {
    var a = new u128(100, 255);
    return u128.Zero - a == -a;
  }

  static shouldLeftShiftOneNumber(): bool {
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

  static shouldMultiplyTwoNumbers1(): bool {
    var a = u128.Max;
    var b = u128.One;
    return a * b == a;
  }

  static shouldMultiplyTwoNumbersWithOverflow1(): bool {
    var a = new u128(0, 1);
    return a * a == u128.Zero;
  }

  static shouldMultiplyTwoNumbersWithOverflow2(): bool {
    var a = new u128(1, 1);
    return a * a == new u128(1, 2);
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
  static shouldPowerOfNegativeReturnZeroNumber(): bool {
    var a = new u128(-1, -1);
    return a ** -2 == u128.Zero;
  }

  static shouldPowerOfZeroReturnOneNumber(): bool {
    var a = new u128(-1, -1);
    return a ** 0 == u128.One;
  }

  static shouldAnyPowerForZeroReturnNumber(): bool {
    var a = u128.Zero;
    return a ** 10 == u128.Zero && a ** 1 == u128.Zero && a ** 2 == u128.Zero;
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

  static shouldPowerOfTwoReturnSquaredNumber3(): bool {
    var a = new u128(0xFFFF);
    return (a ** 2) == new u128(<u64>0xFFFF * <u64>0xFFFF);
  }

  static shouldPowerOfTwoReturnSquaredNumber4(): bool {
    var a = new u128(0xFFFF - 1);
    return (a ** 2) == new u128((0xFFFF - 1) * (0xFFFF - 1));
  }

  static shouldPowerOfTwoReturnSquaredNumberWithOverflow(): bool {
    var a = new u128(0, 1);
    return (a ** 2) == u128.Zero;
  }

  static shouldPowerOfTwoReturnSquaredNumberWithOverflow2(): bool {
    var a = new u128(0, 3);
    return (a ** 2) == u128.Zero;
  }

  static shouldPowerOfThreeReturnNumber(): bool {
    var a = new u128(0xFFFF);
    return (a ** 3) == new u128(0xFFFD0002FFFF);
  }

  static shouldPowerOfThreeReturnNumber2(): bool {
    var a = new u128(12345678);
    return (a ** 3) == new u128(0x017FEC50E04509B8, 0x66);
  }

  static shouldPowerOfThreeReturnNumber3(): bool {
    var a = new u128(1 << 20);
    return (a ** 4) == new u128(0, 0x10000);
  }

  static shouldPowerOfThreeReturnNumber4(): bool {
    var a = new u128((1 << 40) + 1);
    return (a ** 3) == new u128(0x0000030000000001, 0x100000000030000);
  }

  static shouldPowerOfFourReturnNumber5(): bool {
    var a = new u128(0, 1);
    return (a ** 4) == u128.Zero;
  }

  static shouldPowerOf18ReturnNumber(): bool {
    var a = new u128(123);
    return (a ** 18) == new u128(0xB8C3F9BBD49E3CD9, 0x1F3D196F2C2AF26A);
  }

  static shouldPowerOf127ReturnNumber1(): bool {
    var a = new u128(2);
    return (a ** 127) == new u128(0, 0x8000000000000000);
  }

  static shouldPowerOf127ReturnNumber2(): bool {
    var a = new u128(3);
    return (a ** 127) == new u128(0x2AC0B180838228AB, 0x4C1D8529A9294BCC);
  }

  static shouldPowerOf128ReturnNumber(): bool {
    var a = new u128(2);
    return (a ** 128) == u128.Zero;
  }
}

export class BinaryOperationCountTests {
  static shouldPopcount1(): bool {
    return u128.popcnt(u128.Zero) == 0;
  }

  static shouldPopcount2(): bool {
    return u128.popcnt(new u128(1)) == 1;
  }

  static shouldPopcount3(): bool {
    return u128.popcnt(new u128(1, 1)) == 2;
  }

  static shouldPopcount4(): bool {
    return u128.popcnt(new u128(0, 1)) == 1;
  }

  static shouldPopcount5(): bool {
    return u128.popcnt(new u128(-1, -1)) == 128;
  }

  static shouldCountLeadingZeros1(): bool {
    return u128.clz(u128.Zero) == 128;
  }

  static shouldCountLeadingZeros2(): bool {
    return u128.clz(u128.One) == 127;
  }

  static shouldCountLeadingZeros3(): bool {
    return u128.clz(new u128(0, 1)) == 63;
  }

  static shouldCountLeadingZeros4(): bool {
    return u128.clz(new u128(-1, -1)) == 0;
  }

  static shouldCountTrailingZeros1(): bool {
    return u128.ctz(u128.Zero) == 128;
  }

  static shouldCountTrailingZeros2(): bool {
    return u128.ctz(u128.One) == 0;
  }

  static shouldCountTrailingZeros3(): bool {
    return u128.ctz(new u128(2)) == 1;
  }

  static shouldCountTrailingZeros4(): bool {
    return u128.ctz(new u128(0, 1)) == 64;
  }

  static shouldCountTrailingZeros5(): bool {
    return u128.ctz(new u128(-1, -1)) == 0;
  }

  static shouldCountTrailingZeros6(): bool {
    return u128.ctz(new u128(0, 0x8000000000000000)) == 127;
  }
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

  static shouldModNumberWithOne(): bool {
    let a = new u128(10248516654965971928, 5);
    let b = u128.One;
    return a % b == u128.Zero;
  }

  static shouldModNumberSameNumber(): bool {
    let a = new u128(10248516654965971928, 5);
    return a % a == u128.Zero;
  }

  static shouldDivideTwoSameNumbers(): bool {
    let a = new u128(10248516654965971928, 5);
    return a / a == u128.One;
  }
}

export class ThrowableTests {
  static shouldThrowFromStringWithNull(): bool {
    return !(u128.fromString(changetype<String>(null)));
  }

  static shouldThrowFromStringWithUnsupportedRadix1(): bool {
    return !(u128.fromString('0000', 1));
  }

  static shouldThrowFromStringWithUnsupportedRadix2(): bool {
    return !(u128.fromString('1234', 37));
  }

  static shouldThrowFromBytesWithNull1(): bool {
    return !(u128.fromBytes(changetype<u8[]>(null)));
  }

  static shouldThrowFromBytesWithNull2(): bool {
    return !(u128.fromBytes(changetype<u8[]>(null), true));
  }

  static shouldThrowFromBytesWithWrongByteArrayLength1(): bool {
    return !(u128.fromBytes([]));
  }

  static shouldThrowFromBytesWithWrongByteArrayLength2(): bool {
    return !(u128.fromBytes([], true));
  }

  static shouldThrowFromBytesWithWrongByteArrayLength3(): bool {
    return !(u128.fromBytes([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]));
  }

  static shouldThrowFromBytesWithWrongByteArrayLength4(): bool {
    return !(u128.fromBytes([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], true));
  }

  static shouldThrowWhenDivideNumberByZero(): bool {
    let a = new u128(1, 1);
    return !(a / u128.Zero);
  }

  static shouldThrowWhenModNumberByZero(): bool {
    let a = new u128(1, 1);
    return !(a % u128.Zero);
  }
}
