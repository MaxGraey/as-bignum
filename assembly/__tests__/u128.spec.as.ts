import { u128 } from '../../assembly/integer/u128';
import { arrayToUint8Array } from "./utils";


describe("String Conversion", () => {
  it("should Convert To Decimal String 1", (): void => {
    var a = new u128(10248516654965971928, 5);
    expect<string>('102482237023513730008').toStrictEqual(a.toString());
  });

  it("should Convert To Decimal String 2", (): void => {
    var a = u128.Max;
    expect<string>('340282366920938463463374607431768211455').toStrictEqual(a.toString());
  });

  it("should Convert To Decimal String 3", (): void => {
    var a = u128.Zero;
    expect<string>('0').toStrictEqual(a.toString());
  });

  it("should Convert From Decimal String 1", (): void => {
    expect<u128>(u128.from('')).toStrictEqual(u128.Zero);
  });

  it("should Convert From Decimal String 2", (): void => {
    expect<u128>(u128.from('0')).toStrictEqual(u128.Zero);
  });

  it("should Convert From Decimal String 3", (): void => {
    expect<u128>(u128.from('123456789')).toStrictEqual(new u128(123456789));
  });

  it("should Convert From Decimal String 4", (): void => {
    expect<u128>(u128.from('340282366920938463463374607431768211455')).toStrictEqual(u128.Max);
  });

  it("should Convert From Decimal String 5", (): void => {
    expect<u128>(u128.from('-123456789')).toStrictEqual(u128.from(-123456789));
  });

  it("should Convert From Decimal String 6", (): void => {
    expect<u128>(u128.from('+123456789')).toStrictEqual(new u128(123456789));
  });

  it("should Convert From Decimal String 7", (): void => {
    expect<u128>(u128.fromString('123456789', 10)).toStrictEqual(new u128(123456789));
  });

  it("should Convert From Decimal With Invalid Chars String 1", (): void => {
    expect<u128>(u128.from('00000123abc')).toStrictEqual(new u128(123));
  });

  it("should Convert From Decimal With Invalid Chars String 2", (): void => {
    expect<u128>(u128.from('x00000123abc')).toStrictEqual(u128.Zero);
  });

  it("should Convert From Decimal With Invalid Chars String 3", (): void => {
    expect<u128>(u128.from('-x')).toStrictEqual(u128.Zero);
  });

  it("should Convert From Decimal With Invalid Chars String 4", (): void => {
    expect<u128>(u128.from('--01234')).toStrictEqual(u128.Zero);
  });

  it("should Convert From Decimal With Invalid Chars String 5", (): void => {
    expect<u128>(u128.from('123\u3012')).toStrictEqual(new u128(123));
  });

  it("should Convert From Decimal With Invalid Chars String 6", (): void => {
    expect<u128>(u128.from(String.fromCodePoint(0x10000))).toStrictEqual(u128.Zero);
  });

  it("should Convert From Decimal With Invalid Chars String 7", (): void => {
    expect<u128>(u128.from('{0123')).toStrictEqual(u128.Zero);
  });

  it("should Convert From Decimal With Invalid Chars String 8", (): void => {
    expect<u128>(u128.from('/0123')).toStrictEqual(u128.Zero);
  });

  it("should Convert From Hex String", (): void => {
    expect<u128>(u128.fromString('123456abcdef', 16)).toStrictEqual(new u128(0x123456abcdef));
  });

  it("should Convert From Mixed Case Hex String", (): void => {
    expect<u128>(u128.from('0xabcdefABCDEF')).toStrictEqual(new u128(0xabcdefABCDEF));
  });

  it("should Convert From Octal String", (): void => {
    expect<u128>(u128.from('0o01234567')).toStrictEqual(u128.from(0o01234567));
  });

  it("should Convert From Binary String", (): void => {
    expect<u128>(u128.from('0b10101010101010101010')).toStrictEqual(u128.from(0b10101010101010101010));
  });
});

describe("Buffer Conversion", () => {

  it("should Convert From Bytes Little Endian 1", (): void => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect<u128>(u128.fromBytes(arr)).toStrictEqual(new u128(0x8877665544332211, 0x12ffeeddccbbaa99));
  });

  it("should Convert From Bytes Little Endian 2", (): void => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    var uint8Array = arrayToUint8Array(arr);

    expect<u128>(u128.fromBytes<Uint8Array>(uint8Array)).toStrictEqual(new u128(0x8877665544332211, 0x12ffeeddccbbaa99));
  });

  it("should Convert From Bytes Big Endian 1", (): void => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect<u128>(u128.fromBytes(arr, true)).toStrictEqual(new u128(0x99aabbccddeeff12, 0x1122334455667788));
  });

  it("should Convert From Bytes Big Endian 2", (): void => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    var uint8Array = arrayToUint8Array(arr);

    expect<u128>(u128.fromBytes<Uint8Array>(uint8Array, true)).toStrictEqual(new u128(0x99aabbccddeeff12, 0x1122334455667788));
  });

  it("should Convert To Bytes Litte Endian 1", (): void => {
    // var a: u8[] = (new u128(0x8877665544332211, 0x12ffeeddccbbaa99)).toBytes();
    var u = new u128(0x8877665544332211, 0x12ffeeddccbbaa99);
    var a = u.toBytes();
    expect<bool>(
      a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
      a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
      a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
      a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12
    ).toBe(true);
  });

  it("should Convert To Bytes Litte Endian 2", (): void => {
    // var a: u8[] = (new u128(0x8877665544332211, 0x12ffeeddccbbaa99)).toBytes();
    var u = new u128(0x8877665544332211, 0x12ffeeddccbbaa99);
    var a = u.toUint8Array();
    expect<bool>(
        a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
        a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
        a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
        a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12
    ).toBe(true);
  });

  it("should Convert To Bytes Big Endian 1", (): void => {
    var u = new u128(0x99aabbccddeeff12, 0x1122334455667788);
    var a = u.toBytes(true);
    expect<bool>(
      a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
      a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
      a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
      a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12
    ).toBe(true);
  });

  it("should Convert To Bytes Big Endian 2", (): void => {
    var u = new u128(0x99aabbccddeeff12, 0x1122334455667788);
    var a = u.toUint8Array(true);
    expect<bool>(
        a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
        a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
        a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
        a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12
    ).toBe(true);
  });
});

describe("Basic Type Conversion", () => {
  it("should Convert From Integer 1", (): void => {
    var a = u128.from(-1);
    expect<u64>(a.lo).toBe(u64.MAX_VALUE);
    expect<u64>(a.hi).toBe(u64.MAX_VALUE);
  });

  it("should Convert From Integer 2", (): void => {
    var a = u128.fromI32(-1);
    expect<u64>(a.lo).toBe(u64.MAX_VALUE);
    expect<u64>(a.hi).toBe(u64.MAX_VALUE);
  });

  it("should Convert To Uinsigned Long Int 1", (): void => {
    var a = u128.Max;
    expect<u64>(a.as<u64>()).toBe(u64.MAX_VALUE);
  });

  it("should Convert To Signed Long Int 1", (): void => {
    var a = u128.from(-123456789);
    expect<i64>(a.as<i64>()).toBe(-123456789);
  });

  it("should Convert To Signed Long Int 2", (): void => {
    var a = u128.Max;
    expect<i64>(a.as<i64>()).toBe(<i64>-1);
  });

  it("should Convert To Unsigned Byte", (): void => {
    var a = u128.Max;
    expect<u8>(a.as<u8>()).toBe(0xFF);
  });

  it("should Convert To Double 1", (): void => {
    var a = u128.Zero;
    expect<f64>(a.as<f64>()).toBe(0.0);
  });

  it("should Convert To Double 2", (): void => {
    var a = u128.One;
    expect<f64>(a.as<f64>()).toBe(1.0);
  });

  it("should Convert To Double 3", (): void => {
    var a = new u128(33333);
    expect<f64>(a.as<f64>()).toBe(33333.0);
  });

  it("should Convert To Double Max Safe Long Integer", (): void => {
    var a = new u128(9007199254740991);
    expect<f64>(a.as<f64>()).toBe(9007199254740991.0);
  });

  it("should Convert Maximum To Double", (): void => {
    var a = u128.Max;
    expect<f64>(a.as<f64>()).toBe(340282366920938463463374607431768211455.0);
  });

  it("should Convert To Double 4", (): void => {
    var a = new u128(1 << 54);
    expect<f64>(a.as<f64>()).toBe(18014398509481984.0);
  });

  it("should Convert To Double 5", (): void => {
    var a = new u128(1 << 55);
    expect<f64>(a.as<f64>()).toBe(36028797018963970.0);
  });

  it("should Convert To Double 6", (): void => {
    var a = new u128(1 << 56);
    expect<f64>(a.as<f64>()).toBe(72057594037927940.0);
  });

  it("should Convert To Double 7", (): void => {
    var a = new u128(1 << 57);
    expect<f64>(a.as<f64>()).toBe(144115188075855870.0);
  });

  it("should Convert To Double 8", (): void => {
    var a = new u128(1 << 63);
    expect<f64>(a.as<f64>()).toBe(9223372036854776000.0);
  });

  it("should Convert To Double 9", (): void => {
    var a = new u128(u64.MAX_VALUE);
    expect<f64>(a.as<f64>()).toBe(18446744073709552000.0);
  });
});

describe("Basic Operations", () => {
  it("should Number Is Zero 1", (): void => {
    var a = u128.Zero;
    expect<bool>(a.isZero()).toBe(true);
  });

  it("should Number Is Zero 2", (): void => {
    var a = u128.One;
    expect<bool>(!a.isZero()).toBe(true);
  });

  it("should Number Binary Not", (): void => {
    var a = new u128(1, 2);
    expect<u128>(~a).toStrictEqual(new u128(~1, ~2));
  });

  it("should Number Unary Positive", (): void => {
    var a = new u128(1, 2);
    expect<u128>(a).toStrictEqual(+a);
  });

  it("should Number Non Empty", (): void => {
    var a = u128.One;
    expect<bool>(!!a).toBe(true);
  });

  it("should Number Is Empty 1", (): void => {
    var a = u128.Zero;
    expect<bool>(!a).toBe(true);
  });

  it("should Number Is Empty 2", (): void => {
    expect<bool>(!changetype<u128>(null)).toBe(true);
  });

  it("should Binary Or Numbers", (): void => {
    var a = new u128(0,   123);
    var b = new u128(111, 0);
    expect<u128>((a | b)).toStrictEqual(new u128(111, 123));
  });

  it("should Binary Xor Numbers", (): void => {
    var a = new u128(111, 123);
    var b = new u128(111, 0);
    expect<u128>((a ^ b)).toStrictEqual(new u128(0, 123));
  });

  it("should Binary And Numbers", (): void => {
    var a = new u128(0xFF00, 123);
    var b = new u128(0x00FF, 234);
    expect<u128>((a & b)).toStrictEqual(new u128(0, 106));
  });

  it("should Equal Two Numbers", (): void => {
    var a = new u128(100, 255);
    var b = new u128(100, 255);
    expect<u128>(a).toStrictEqual(b);
  });

  it("should Non Equal Two Numbers", (): void => {
    var a = new u128(1, 1);
    var b = new u128(1, 0);
    expect<bool>(a != b).toBe(true);
  });

  it("should Compare Less Two Numbers 1", (): void => {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    expect<bool>(b < a).toBe(true);
  });

  it("should Compare Less Two Numbers 2", (): void => {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    expect<bool>(!(b < a)).toBe(true);
  });

  it("should Compare Less Two Numbers 3", (): void => {
    var a = u128.One;
    var b = u128.Max;
    expect<bool>(a < b).toBe(true);
  });

  it("should Compare Less Or Equal Two Numbers 1", (): void => {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    expect<bool>(b <= a).toBe(true);
  });

  it("should Compare Less Or Equal Two Numbers 2", (): void => {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    expect<bool>(b <= a).toBe(true);
  });

  it("should Compare Greater Two Numbers 1", (): void => {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    expect<bool>(a > b).toBe(true);
  });

  it("should Compare Greater Two Numbers 2", (): void => {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    expect<bool>(!(a > b)).toBe(true);
  });

  it("should Compare Greater Or Equal Two Numbers 1", (): void => {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    expect<bool>(a >= b).toStrictEqual(true);
  });

  it("should Compare Greater Or Equal Two Numbers 2", (): void => {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    expect<bool>(a >= b).toStrictEqual(true);
  });

  it("should Add Two Numbers 1", (): void => {
    var a = new u128(100, 255);
    var b = new u128(255, 100);
    expect<u128>(a + b).toStrictEqual(new u128(355, 355));
  });

  it("should Add Two Numbers 2", (): void => {
    var a = u128.from(-2);
    var b = u128.One;
    expect<u128>(a + b).toStrictEqual(u128.Max);
  });

  it("should Subtract Two Numbers", (): void => {
    var a = new u128(355, 355);
    var b = new u128(100, 255);
    expect<u128>(a - b).toStrictEqual(new u128(255, 100));
  });

  it("should Subtract From Zero Equal Negative Number", (): void => {
    var a = new u128(100, 255);
    expect<u128>(u128.Zero - a).toStrictEqual(-a);
  });

  it("should Left Shift One Number", (): void => {
    var a = new u128(1, 0);
    expect<u128>(a << 65).toStrictEqual(new u128(0, 2));
  });

  it("should Periodic Left Shift One Number", (): void => {
    var a = new u128(1, 0);
    expect<u128>(a << (65 + 128)).toStrictEqual(new u128(0, 2));
  });

  it("should Invariant Left Shift Zero Number", (): void => {
    var a = new u128(1, 1);
    expect<u128>(a << 0).toStrictEqual(a);
  });

  it("should Right Shift One Number", (): void => {
    var a = new u128(0, 100);
    expect<u128>(a >> 65).toStrictEqual(new u128(50));
  });

  it("should Periodic Right Shift One Number", (): void => {
    var a = new u128(0, 100);
    expect<u128>(a >> (65 + 128)).toStrictEqual(new u128(50));
  });

  it("should Invariant Right Shift Zero Number", (): void => {
    var a = new u128(1, 1);
    expect<u128>(a >> 0).toStrictEqual(a);
  });

  it("should Multiply Two Numbers", (): void => {
    var a = u128.from(43545453452);
    var b = u128.from(2353454354);
    expect<u128>(a * b).toStrictEqual(new u128(10248516654965971928, 5));
  });

  it("should Multiply Two Numbers 1", (): void => {
    var a = u128.Max;
    var b = u128.One;
    expect<u128>(a * b).toStrictEqual(a);
  });

  it("should Multiply Two Numbers With Overflow 1", (): void => {
    var a = new u128(0, 1);
    expect<u128>(a * a).toStrictEqual(u128.Zero);
  });

  it("should Multiply Two Numbers With Overflow 2", (): void => {
    var a = new u128(1, 1);
    expect<u128>(a * a).toStrictEqual(new u128(1, 2));
  });

  it("should Negative Number 1", (): void => {
    expect<u128>(-new u128(2)).toStrictEqual(u128.from(-2));
  });

  it("should Negative Number 2", (): void => {
    expect<u128>(-u128.Max).toStrictEqual(u128.One);
  });

  it("should Prefix Increment Number 1", (): void => {
    var a = new u128(10248516654965971928, 5);
    ++a;
    expect<u128>(a).toStrictEqual(new u128(10248516654965971929, 5));
  });

  it("should Prefix Increment Number 2", (): void => {
    var a = new u128(0xFFFFFFFFFFFFFFFF, 0);
    ++a;
    expect<u128>(a).toStrictEqual(new u128(0, 1));
  });

  it("should Prefix Increment Number 3", (): void => {
    var a = u128.Zero;
    ++a;
    expect<u128>(a).toStrictEqual(u128.One);
  });

  it("should Prefix Increment Number 4", (): void => {
    var a = new u128(<u64>-2, <u64>-1);
    ++a;
    expect<u128>(a).toStrictEqual(u128.Max);
  });

  it("should Prefix Decrement Number 1", (): void => {
    var a = new u128(10248516654965971928, 5);
    --a;
    expect<u128>(a).toStrictEqual(new u128(10248516654965971927, 5));
  });

  it("should Prefix Decrement Number 2", (): void => {
    var a = new u128(0, 1);
    --a;
    expect<u128>(a).toStrictEqual(new u128(0xFFFFFFFFFFFFFFFF, 0));
  });

  it("should Postfix Increment Number", (): void => {
    var a = new u128(0xFFFFFFFFFFFFFFFF, 0);
    var t = a++;
    expect<u128>(t).toStrictEqual(new u128(0xFFFFFFFFFFFFFFFF, 0));
    expect<u128>(a).toStrictEqual(new u128(0, 1));
  });

  it("should Postfix Decrement Number", (): void => {
    var a = new u128(0, 1);
    var t = a--;
    expect<u128>(t).toStrictEqual(new u128(0, 1));
    expect<u128>(a).toStrictEqual(new u128(0xFFFFFFFFFFFFFFFF, 0));
  });
});

describe("Exponention Operation", () => {
  it("should Power Of Zero With Zero Return One Number", (): void => {
    var a = u128.Zero;
    expect<u128>(a ** 0).toStrictEqual(u128.One);
  });

  it("should Power Of One With Negative Return One Number", (): void => {
    var a = u128.One;
    expect<u128>(a ** -2).toStrictEqual(u128.One);
  });

  it("should Power Of Negative Return Zero Number", (): void => {
    var a = new u128(-1, -1);
    expect<u128>(a ** -2).toStrictEqual(u128.Zero);
  });

  it("should Power Of Zero Return One Number", (): void => {
    var a = new u128(-1, -1);
    expect<u128>(a ** 0).toStrictEqual(u128.One);
  });

  it("should Any Power For Zero Return Number", (): void => {
    var a = u128.Zero;
    expect<u128>(a ** 10).toStrictEqual(u128.Zero);
    expect<u128>(a ** 1).toStrictEqual(u128.Zero);
    expect<u128>(a ** 2).toStrictEqual(u128.Zero);
  });

  it("should Power Of One Return Same Number", (): void => {
    var a = new u128(-1, -1);
    expect<u128>(a ** 1).toStrictEqual(a);
  });

  it("should Power Of Two Return Squared Number 1", (): void => {
    var a = new u128(1);
    expect<u128>((a ** 2)).toStrictEqual((a * a));
  });

  it("should Power Of Two Return Squared Number 2", (): void => {
    var a = new u128(0xFFFFFFFF);
    expect<u128>((a ** 2)).toStrictEqual((a * a));
  });

  it("should Power Of Two Return Squared Number 3", (): void => {
    var a = new u128(0xFFFF);
    expect<u128>((a ** 2)).toStrictEqual(new u128(<u64>0xFFFF * <u64>0xFFFF));
  });

  it("should Power Of Two Return Squared Number 4", (): void => {
    var a = new u128(0xFFFF - 1);
    expect<u128>((a ** 2)).toStrictEqual(new u128((0xFFFF - 1) * (0xFFFF - 1)));
  });

  it("should Power Of Two Return Squared Number With Overflow", (): void => {
    var a = new u128(0, 1);
    expect<u128>((a ** 2)).toStrictEqual(u128.Zero);
  });

  it("should Power Of Two Return Squared Number With Overflow 2", (): void => {
    var a = new u128(0, 3);
    expect<u128>((a ** 2)).toStrictEqual(u128.Zero);
  });

  it("should Power Of Three Return Number", (): void => {
    var a = new u128(0xFFFF);
    expect<u128>((a ** 3)).toStrictEqual(new u128(0xFFFD0002FFFF));
  });

  it("should Power Of Three Return Number 2", (): void => {
    var a = new u128(12345678);
    expect<u128>((a ** 3)).toStrictEqual(new u128(0x017FEC50E04509B8, 0x66));
  });

  it("should Power Of Three Return Number 3", (): void => {
    var a = new u128(1 << 20);
    expect<u128>((a ** 4)).toStrictEqual(new u128(0, 0x10000));
  });

  it("should Power Of Three Return Number 4", (): void => {
    var a = new u128((1 << 40) + 1);
    expect<u128>((a ** 3)).toStrictEqual(new u128(0x0000030000000001, 0x100000000030000));
  });

  it("should Power Of Four Return Number 5", (): void => {
    var a = new u128(0, 1);
    expect<u128>((a ** 4)).toStrictEqual(u128.Zero);
  });

  it("should Power Of 18Return Number", (): void => {
    var a = new u128(123);
    expect<u128>((a ** 18)).toStrictEqual(new u128(0xB8C3F9BBD49E3CD9, 0x1F3D196F2C2AF26A));
  });

  it("should Power Of 127Return Number 1", (): void => {
    var a = new u128(2);
    expect<u128>((a ** 127)).toStrictEqual(new u128(0, 0x8000000000000000));
  });

  it("should Power Of 127Return Number 2", (): void => {
    var a = new u128(3);
    expect<u128>((a ** 127)).toStrictEqual(new u128(0x2AC0B180838228AB, 0x4C1D8529A9294BCC));
  });

  it("should Power Of 128Return Number", (): void => {
    var a = new u128(2);
    expect<u128>((a ** 128)).toStrictEqual(u128.Zero);
  });

  it("should Sqrt Zero Number", (): void => {
    var a = u128.Zero;
    expect<u128>(u128.sqrt(a)).toStrictEqual(u128.Zero);
  });

  it("should Sqrt One Number", (): void => {
    var a = u128.One;
    expect<u128>(u128.sqrt(a)).toStrictEqual(u128.One);
  });

  it("should Sqrt Three Number", (): void => {
    var a = new u128(3);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(1));
  });

  it("should Sqrt Four Number", (): void => {
    var a = new u128(4);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(2));
  });

  it("should Sqrt Five Number", (): void => {
    var a = new u128(5);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(2));
  });

  it("should Sqrt Six Number", (): void => {
    var a = new u128(5);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(2));
  });

  it("should Sqrt Nine Number", (): void => {
    var a = new u128(9);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(3));
  });

  it("should Sqrt 64Number", (): void => {
    var a = new u128(64);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(8));
  });

  it("should Sqrt 1000Number", (): void => {
    var a = new u128(1000);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(31));
  });

  it("should Sqrt Max Value Number", (): void => {
    var a = u128.Max;
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(u64.MAX_VALUE));
  });
});

describe("Binary Operation Count", () => {
  it("should Popcount 1", (): void => {
    expect<i32>(u128.popcnt(u128.Zero)).toBe(0);
  });

  it("should Popcount 2", (): void => {
    expect<i32>(u128.popcnt(new u128(1))).toBe(1);
  });

  it("should Popcount 3", (): void => {
    expect<i32>(u128.popcnt(new u128(1, 1))).toBe(2);
  });

  it("should Popcount 4", (): void => {
    expect<i32>(u128.popcnt(new u128(0, 1))).toBe(1);
  });

  it("should Popcount 5", (): void => {
    expect<i32>(u128.popcnt(new u128(-1, -1))).toBe(128);
  });

  it("should Count Leading Zeros 1", (): void => {
    expect<i32>(u128.clz(u128.Zero)).toBe(128);
  });

  it("should Count Leading Zeros 2", (): void => {
    expect<i32>(u128.clz(u128.One)).toBe(127);
  });

  it("should Count Leading Zeros 3", (): void => {
    expect<i32>(u128.clz(new u128(0, 1))).toBe(63);
  });

  it("should Count Leading Zeros 4", (): void => {
    expect<i32>(u128.clz(new u128(-1, -1))).toBe(0);
  });

  it("should Count Trailing Zeros 1", (): void => {
    expect<i32>(u128.ctz(u128.Zero)).toBe(128);
  });

  it("should Count Trailing Zeros 2", (): void => {
    expect<i32>(u128.ctz(u128.One)).toBe(0);
  });

  it("should Count Trailing Zeros 3", (): void => {
    expect<i32>(u128.ctz(new u128(2))).toBe(1);
  });

  it("should Count Trailing Zeros 4", (): void => {
    expect<i32>(u128.ctz(new u128(0, 1))).toBe(64);
  });

  it("should Count Trailing Zeros 5", (): void => {
    expect<i32>(u128.ctz(new u128(-1, -1))).toBe(0);
  });

  it("should Count Trailing Zeros 6", (): void => {
    expect<i32>(u128.ctz(new u128(0, 0x8000000000000000))).toBe(127);
  });
});

describe("Division And Mod Operation", () => {
  it("should Divide Two Numbers Without Remainder 1", (): void => {
    let a = new u128(10248516657319426282, 5);
    let b = u128.from(2353454354);
    expect<u128>(a / b).toStrictEqual(u128.from(43545453453));
  });

  it("should Divide Two Numbers Without Remainder 2", (): void => {
    let a = new u128(10248516654965971928, 5);
    let b = u128.from(43545453452);
    expect<u128>(a / b).toStrictEqual(u128.from(2353454354));
  });

  it("should Divide Two Numbers Without Remainder 3", (): void => {
    let a = new u128(3152652666208173568, 2);
    let b = u128.from(4354545345312);
    expect<u128>(a / b).toStrictEqual(u128.from(9196400));
  });

  it("should Divide Two Numbers With Remainder 1", (): void => {
    let a = new u128(3152652666208173568, 2);
    let b = u128.from(43543534534534);
    expect<u128>(a / b).toStrictEqual(u128.from(919680));
  });

  it("should Divide Two Numbers With Remainder 2", (): void => {
    let a = new u128(3152652666208178,0);
    let b = u128.from(43543534534534);
    expect<u128>(a / b).toStrictEqual(u128.from(72));
  });

  it("should Divide Zero With Number", (): void => {
    let a = u128.Zero;
    let b = new u128(10248516654965971928, 5);
    expect<u128>(a / b).toStrictEqual(u128.Zero);
  });

  it("should Divide Number With One", (): void => {
    let a = new u128(10248516654965971928, 5);
    let b = u128.One;
    expect<u128>(a / b).toStrictEqual(a);
  });

  it("should Mod Two Numbers Without Remainder 1", (): void => {
    let a = new u128(10248516657319426282, 5);
    let b = u128.from(2353454354);
    expect<u128>(a % b).toStrictEqual(u128.Zero);
  });

  it("should Mod Two Numbers Without Remainder 2", (): void => {
    let a = new u128(10248516654965971928, 5);
    let b = u128.from(43545453452);
    expect<u128>(a % b).toStrictEqual(u128.Zero);
  });

  it("should Mod Two Numbers With Remainder 1", (): void => {
    let a = new u128(3152652666208173568, 2);
    let b = u128.from(43543534534534);
    expect<u128>(a % b).toStrictEqual(u128.from(22972907047680));
  });

  it("should Mod Two Numbers With Remainder 2", (): void => {
    let a = new u128(3152652666208178);
    let b = u128.from(43543534534534);
    expect<u128>(a % b).toStrictEqual(u128.from(17518179721730));
  });

  it("should Mod Number With One", (): void => {
    let a = new u128(10248516654965971928, 5);
    let b = u128.One;
    expect<u128>(a % b).toStrictEqual(u128.Zero);
  });

  it("should Mod Number Same Number", (): void => {
    let a = new u128(10248516654965971928, 5);
    expect<u128>(a % a).toStrictEqual(u128.Zero);
  });

  it("should Divide Two Same Numbers", (): void => {
    let a = new u128(10248516654965971928, 5);
    expect<u128>(a / a).toStrictEqual(u128.One);
  });
});

describe("Throwable", () => {
  it("should Throw From String With Unsupported Radix 1", (): void => {
    expectFn(()=>{
     !(u128.fromString('0000', 1));
    }).toThrow();
  });

  it("should Throw From String With Unsupported Radix 2", (): void => {
    expectFn(()=>{
     !(u128.fromString('1234', 37));
    }).toThrow();
  });

  it("should Throw From Bytes With Null 1", (): void => {
    expectFn(()=>{
     !(u128.fromBytes(changetype<u8[]>(null)));
    }).toThrow();
  });

  it("should Throw From Bytes With Null 2", (): void => {
    expectFn(()=>{
      !(u128.fromBytes(changetype<u8[]>(null), true));
    }).toThrow();
  });

  it("should Throw From Bytes With Wrong Byte Array Length 1", (): void => {
    expectFn(()=>{
     !(u128.fromBytes<u8[]>([]));
    }).toThrow();
  });

  it("should Throw From Bytes With Wrong Byte Array Length 2", (): void => {
    expectFn(()=>{
     !(u128.fromBytes<u8[]>([], true));
    }).toThrow();
  });

  it("should Throw From Bytes With Wrong Byte Array Length 3", (): void => {
    expectFn(()=>{
     !(u128.fromBytes<u8[]>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]));
    }).toThrow();
  });

  it("should Throw From Bytes With Wrong Byte Array Length 4", (): void => {
    expectFn(()=>{
     !(u128.fromBytes<u8[]>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], true));
    }).toThrow();
  });

  it("should Throw From Bytes With Wrong Byte Array Length 5", (): void => {
    expectFn(()=>{
      !(u128.fromBytes<Uint8Array>(new Uint8Array(0)));
    }).toThrow();
  });

  it("should Throw From Bytes With Wrong Byte Array Length 6", (): void => {
    expectFn(()=>{
      !(u128.fromBytes<Uint8Array>(new Uint8Array(0), true));
    }).toThrow();
  });

  it("should Throw From Bytes With Wrong Byte Array Length 7", (): void => {
    expectFn(()=>{
      let arr = new Uint8Array(18);
      for (let i = 0; i < 18; i++) {
        arr[i] = <u8>i;
      }
     !(u128.fromBytes<Uint8Array>(arr));
    }).toThrow();
  });

  it("should Throw From Bytes With Wrong Byte Array Length 8", (): void => {
    expectFn(()=>{
      let arr = new Uint8Array(18);
      for (let i = 0; i < 18; i++) {
        arr[i] = <u8>i;
      }
     !(u128.fromBytes<Uint8Array>(arr, true));
    }).toThrow();
  });

  it("should Throw When Divide Number By Zero", (): void => {
    expectFn(()=>{
      let a = new u128(1, 1);
      !(a / u128.Zero);
    }).toThrow();
  });

  it("should Throw When Mod Number By Zero", (): void => {
    expectFn(()=>{
      let a = new u128(1, 1);
      !(a % u128.Zero);
    }).toThrow();
  });
});
