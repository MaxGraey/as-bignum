import { u128 } from '../../assembly/integer/u128';
import { arrayToUint8Array } from "./utils";

describe("String Conversion", () => {
  it("Should convert to decimal string 1", () => {
    var a = new u128(10248516654965971928, 5);
    expect<string>('102482237023513730008').toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 2", () => {
    var a = u128.Max;
    expect<string>('340282366920938463463374607431768211455').toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 3", () => {
    var a = u128.Zero;
    expect<string>('0').toStrictEqual(a.toString());
  });

  it("Should convert from decimal string 1", () => {
    expect<u128>(u128.from('')).toStrictEqual(u128.Zero);
  });

  it("Should convert from decimal string 2", () => {
    expect<u128>(u128.from('0')).toStrictEqual(u128.Zero);
  });

  it("Should convert from decimal string 3", () => {
    expect<u128>(u128.from('123456789')).toStrictEqual(new u128(123456789));
  });

  it("Should convert from decimal string 4", () => {
    expect<u128>(u128.from('340282366920938463463374607431768211455')).toStrictEqual(u128.Max);
  });

  it("Should convert from decimal string 5", () => {
    expect<u128>(u128.from('-123456789')).toStrictEqual(u128.from(-123456789));
  });

  it("Should convert from decimal string 6", () => {
    expect<u128>(u128.from('+123456789')).toStrictEqual(new u128(123456789));
  });

  it("Should convert from decimal string 7", () => {
    expect<u128>(u128.fromString('123456789', 10)).toStrictEqual(new u128(123456789));
  });

  it("Should convert from decimal with invalid chars string 1", () => {
    expect<u128>(u128.from('00000123abc')).toStrictEqual(new u128(123));
  });

  it("Should convert from decimal with invalid chars string 2", () => {
    expect<u128>(u128.from('x00000123abc')).toStrictEqual(u128.Zero);
  });

  it("Should convert from decimal with invalid chars string 3", () => {
    expect<u128>(u128.from('-x')).toStrictEqual(u128.Zero);
  });

  it("Should convert from decimal with invalid chars string 4", () => {
    expect<u128>(u128.from('--01234')).toStrictEqual(u128.Zero);
  });

  it("Should convert from decimal with invalid chars string 5", () => {
    expect<u128>(u128.from('123\u3012')).toStrictEqual(new u128(123));
  });

  it("Should convert from decimal with invalid chars string 6", () => {
    expect<u128>(u128.from(String.fromCodePoint(0x10000))).toStrictEqual(u128.Zero);
  });

  it("Should convert from decimal with invalid chars string 7", () => {
    expect<u128>(u128.from('{0123')).toStrictEqual(u128.Zero);
  });

  it("Should convert from decimal with invalid chars string 8", () => {
    expect<u128>(u128.from('/0123')).toStrictEqual(u128.Zero);
  });

  it("Should convert from hex string", () => {
    expect<u128>(u128.fromString('123456abcdef', 16)).toStrictEqual(new u128(0x123456abcdef));
  });

  it("Should convert from mixed case hex string", () => {
    expect<u128>(u128.from('0xabcdefABCDEF')).toStrictEqual(new u128(0xabcdefABCDEF));
  });

  it("Should convert from octal string", () => {
    expect<u128>(u128.from('0o01234567')).toStrictEqual(u128.from(0o01234567));
  });

  it("Should convert from binary string", () => {
    expect<u128>(u128.from('0b10101010101010101010')).toStrictEqual(u128.from(0b10101010101010101010));
  });
});

describe("Buffer Conversion", () => {

  it("Should convert from bytes Little Endian 1", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect<u128>(u128.fromBytes(arr)).toStrictEqual(new u128(0x8877665544332211, 0x12ffeeddccbbaa99));
  });

  it("Should convert from bytes Little Endian 2", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    var uint8Array = arrayToUint8Array(arr);

    expect<u128>(u128.fromBytes<Uint8Array>(uint8Array)).toStrictEqual(new u128(0x8877665544332211, 0x12ffeeddccbbaa99));
  });

  it("Should convert from bytes Big Endian 1", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect<u128>(u128.fromBytes(arr, true)).toStrictEqual(new u128(0x99aabbccddeeff12, 0x1122334455667788));
  });

  it("Should convert from bytes Big Endian 2", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    var uint8Array = arrayToUint8Array(arr);

    expect<u128>(u128.fromBytes<Uint8Array>(uint8Array, true)).toStrictEqual(new u128(0x99aabbccddeeff12, 0x1122334455667788));
  });

  it("Should convert to bytes Litte Endian 1", () => {
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

  it("Should convert to bytes Litte Endian 2", () => {
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

  it("Should convert to bytes Big Endian 1", () => {
    var u = new u128(0x99aabbccddeeff12, 0x1122334455667788);
    var a = u.toBytes(true);
    expect<bool>(
      a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
      a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
      a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
      a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12
    ).toBe(true);
  });

  it("Should convert to bytes Big Endian 2", () => {
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
  it("Should convert from integer 1", () => {
    var a = u128.from(-1);
    expect<u64>(a.lo).toBe(u64.MAX_VALUE);
    expect<u64>(a.hi).toBe(u64.MAX_VALUE);
  });

  it("Should convert from integer 2", () => {
    var a = u128.fromI32(-1);
    expect<u64>(a.lo).toBe(u64.MAX_VALUE);
    expect<u64>(a.hi).toBe(u64.MAX_VALUE);
  });

  it("Should convert to uinsigned long int 1", () => {
    var a = u128.Max;
    expect<u64>(a.as<u64>()).toBe(u64.MAX_VALUE);
  });

  it("Should convert to signed long int 1", () => {
    var a = u128.from(-123456789);
    expect<i64>(a.as<i64>()).toBe(-123456789);
  });

  it("Should convert to signed long int 2", () => {
    var a = u128.Max;
    expect<i64>(a.as<i64>()).toBe(<i64>-1);
  });

  it("Should convert to unsigned byte", () => {
    var a = u128.Max;
    expect<u8>(a.as<u8>()).toBe(0xFF);
  });

  it("Should convert to double 1", () => {
    var a = u128.Zero;
    expect<f64>(a.as<f64>()).toBe(0.0);
  });

  it("Should convert to double 2", () => {
    var a = u128.One;
    expect<f64>(a.as<f64>()).toBe(1.0);
  });

  it("Should convert to double 3", () => {
    var a = new u128(33333);
    expect<f64>(a.as<f64>()).toBe(33333.0);
  });

  it("Should convert to double max safe long integer", () => {
    var a = new u128(9007199254740991);
    expect<f64>(a.as<f64>()).toBe(9007199254740991.0);
  });

  it("Should convert maximum to double", () => {
    var a = u128.Max;
    expect<f64>(a.as<f64>()).toBe(340282366920938463463374607431768211455.0);
  });

  it("Should convert to double 4", () => {
    var a = new u128(1 << 54);
    expect<f64>(a.as<f64>()).toBe(18014398509481984.0);
  });

  it("Should convert to double 5", () => {
    var a = new u128(1 << 55);
    expect<f64>(a.as<f64>()).toBe(36028797018963970.0);
  });

  it("Should convert to double 6", () => {
    var a = new u128(1 << 56);
    expect<f64>(a.as<f64>()).toBe(72057594037927940.0);
  });

  it("Should convert to double 7", () => {
    var a = new u128(1 << 57);
    expect<f64>(a.as<f64>()).toBe(144115188075855870.0);
  });

  it("Should convert to double 8", () => {
    var a = new u128(1 << 63);
    expect<f64>(a.as<f64>()).toBe(9223372036854776000.0);
  });

  it("Should convert to double 9", () => {
    var a = new u128(u64.MAX_VALUE);
    expect<f64>(a.as<f64>()).toBe(18446744073709552000.0);
  });
});

describe("Basic Operations", () => {
  it("Should number is zero 1", () => {
    var a = u128.Zero;
    expect<bool>(a.isZero()).toBe(true);
  });

  it("Should number is zero 2", () => {
    var a = u128.One;
    expect<bool>(!a.isZero()).toBe(true);
  });

  it("Should number binary not", () => {
    var a = new u128(1, 2);
    expect<u128>(~a).toStrictEqual(new u128(~1, ~2));
  });

  it("Should number unary positive", () => {
    var a = new u128(1, 2);
    expect<u128>(a).toStrictEqual(+a);
  });

  it("Should number non empty", () => {
    var a = u128.One;
    expect<bool>(!!a).toBe(true);
  });

  it("Should number is empty 1", () => {
    var a = u128.Zero;
    expect<bool>(!a).toBe(true);
  });

  it("Should number is empty 2", () => {
    expect<bool>(!changetype<u128>(null)).toBe(true);
  });

  it("Should binary or numbers", () => {
    var a = new u128(0,   123);
    var b = new u128(111, 0);
    expect<u128>((a | b)).toStrictEqual(new u128(111, 123));
  });

  it("Should binary xor numbers", () => {
    var a = new u128(111, 123);
    var b = new u128(111, 0);
    expect<u128>((a ^ b)).toStrictEqual(new u128(0, 123));
  });

  it("Should binary and numbers", () => {
    var a = new u128(0xFF00, 123);
    var b = new u128(0x00FF, 234);
    expect<u128>((a & b)).toStrictEqual(new u128(0, 106));
  });

  it("Should equal two numbers", () => {
    var a = new u128(100, 255);
    var b = new u128(100, 255);
    expect<u128>(a).toStrictEqual(b);
  });

  it("Should non equal two numbers", () => {
    var a = new u128(1, 1);
    var b = new u128(1, 0);
    expect<bool>(a != b).toBe(true);
  });

  it("Should compare less two numbers 1", () => {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    expect<bool>(b < a).toBe(true);
  });

  it("Should compare less two numbers 2", () => {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    expect<bool>(!(b < a)).toBe(true);
  });

  it("Should compare less two numbers 3", () => {
    var a = u128.One;
    var b = u128.Max;
    expect<bool>(a < b).toBe(true);
  });

  it("Should compare less or equal two numbers 1", () => {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    expect<bool>(b <= a).toBe(true);
  });

  it("Should compare less or equal two numbers 2", () => {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    expect<bool>(b <= a).toBe(true);
  });

  it("Should compare greater two numbers 1", () => {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    expect<bool>(a > b).toBe(true);
  });

  it("Should compare greater two numbers 2", () => {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    expect<bool>(!(a > b)).toBe(true);
  });

  it("Should compare greater or equal two numbers 1", () => {
    var a = new u128(100, 100);
    var b = new u128(50,  100);
    expect<bool>(a >= b).toStrictEqual(true);
  });

  it("Should compare greater or equal two numbers 2", () => {
    var a = new u128(100, 100);
    var b = new u128(100, 100);
    expect<bool>(a >= b).toStrictEqual(true);
  });

  it("Should add two numbers 1", () => {
    var a = new u128(100, 255);
    var b = new u128(255, 100);
    expect<u128>(a + b).toStrictEqual(new u128(355, 355));
  });

  it("Should add two numbers 2", () => {
    var a = u128.from(-2);
    var b = u128.One;
    expect<u128>(a + b).toStrictEqual(u128.Max);
  });

  it("Should subtract two numbers", () => {
    var a = new u128(355, 355);
    var b = new u128(100, 255);
    expect<u128>(a - b).toStrictEqual(new u128(255, 100));
  });

  it("Should subtract from zero equal negative number", () => {
    var a = new u128(100, 255);
    expect<u128>(u128.Zero - a).toStrictEqual(-a);
  });

  it("Should left shift one number", () => {
    var a = new u128(1, 0);
    expect<u128>(a << 65).toStrictEqual(new u128(0, 2));
  });

  it("Should periodic left shift one number", () => {
    var a = new u128(1, 0);
    expect<u128>(a << (65 + 128)).toStrictEqual(new u128(0, 2));
  });

  it("Should invariant left shift zero number", () => {
    var a = new u128(1, 1);
    expect<u128>(a << 0).toStrictEqual(a);
  });

  it("Should right shift one number", () => {
    var a = new u128(0, 100);
    expect<u128>(a >> 65).toStrictEqual(new u128(50));
  });

  it("Should periodic right shift one number", () => {
    var a = new u128(0, 100);
    expect<u128>(a >> (65 + 128)).toStrictEqual(new u128(50));
  });

  it("Should invariant right shift zero number", () => {
    var a = new u128(1, 1);
    expect<u128>(a >> 0).toStrictEqual(a);
  });

  it("Should multiply two numbers", () => {
    var a = u128.from(43545453452);
    var b = u128.from(2353454354);
    expect<u128>(a * b).toStrictEqual(new u128(10248516654965971928, 5));
  });

  it("Should multiply two numbers 1", () => {
    var a = u128.Max;
    var b = u128.One;
    expect<u128>(a * b).toStrictEqual(a);
  });

  it("Should multiply two numbers with overflow 1", () => {
    var a = new u128(0, 1);
    expect<u128>(a * a).toStrictEqual(u128.Zero);
  });

  it("Should multiply two numbers with overflow 2", () => {
    var a = new u128(1, 1);
    expect<u128>(a * a).toStrictEqual(new u128(1, 2));
  });

  it("Should negative number 1", () => {
    expect<u128>(-new u128(2)).toStrictEqual(u128.from(-2));
  });

  it("Should negative number 2", () => {
    expect<u128>(-u128.Max).toStrictEqual(u128.One);
  });

  it("Should prefix increment number 1", () => {
    var a = new u128(10248516654965971928, 5);
    ++a;
    expect<u128>(a).toStrictEqual(new u128(10248516654965971929, 5));
  });

  it("Should prefix increment number 2", () => {
    var a = new u128(0xFFFFFFFFFFFFFFFF, 0);
    ++a;
    expect<u128>(a).toStrictEqual(new u128(0, 1));
  });

  it("Should prefix increment number 3", () => {
    var a = u128.Zero;
    ++a;
    expect<u128>(a).toStrictEqual(u128.One);
  });

  it("Should prefix increment number 4", () => {
    var a = new u128(<u64>-2, <u64>-1);
    ++a;
    expect<u128>(a).toStrictEqual(u128.Max);
  });

  it("Should prefix decrement number 1", () => {
    var a = new u128(10248516654965971928, 5);
    --a;
    expect<u128>(a).toStrictEqual(new u128(10248516654965971927, 5));
  });

  it("Should prefix decrement number 2", () => {
    var a = new u128(0, 1);
    --a;
    expect<u128>(a).toStrictEqual(new u128(0xFFFFFFFFFFFFFFFF, 0));
  });

  it("Should postfix increment number", () => {
    var a = new u128(0xFFFFFFFFFFFFFFFF, 0);
    var t = a++;
    expect<u128>(t).toStrictEqual(new u128(0xFFFFFFFFFFFFFFFF, 0));
    expect<u128>(a).toStrictEqual(new u128(0, 1));
  });

  it("Should postfix decrement number", () => {
    var a = new u128(0, 1);
    var t = a--;
    expect<u128>(t).toStrictEqual(new u128(0, 1));
    expect<u128>(a).toStrictEqual(new u128(0xFFFFFFFFFFFFFFFF, 0));
  });
});

describe("Exponention Operation", () => {
  it("Should power of zero with zero return one number", () => {
    var a = u128.Zero;
    expect<u128>(a ** 0).toStrictEqual(u128.One);
  });

  it("Should power of one with negative return one number", () => {
    var a = u128.One;
    expect<u128>(a ** -2).toStrictEqual(u128.One);
  });

  it("Should power of negative return zero number", () => {
    var a = new u128(-1, -1);
    expect<u128>(a ** -2).toStrictEqual(u128.Zero);
  });

  it("Should power of zero return one number", () => {
    var a = new u128(-1, -1);
    expect<u128>(a ** 0).toStrictEqual(u128.One);
  });

  it("Should any power for zero return number", () => {
    var a = u128.Zero;
    expect<u128>(a ** 10).toStrictEqual(u128.Zero);
    expect<u128>(a ** 1).toStrictEqual(u128.Zero);
    expect<u128>(a ** 2).toStrictEqual(u128.Zero);
  });

  it("Should power of one return same number", () => {
    var a = new u128(-1, -1);
    expect<u128>(a ** 1).toStrictEqual(a);
  });

  it("Should power of two return squared number 1", () => {
    var a = new u128(1);
    expect<u128>((a ** 2)).toStrictEqual((a * a));
  });

  it("Should power of two return squared number 2", () => {
    var a = new u128(0xFFFFFFFF);
    expect<u128>((a ** 2)).toStrictEqual((a * a));
  });

  it("Should power of two return squared number 3", () => {
    var a = new u128(0xFFFF);
    expect<u128>((a ** 2)).toStrictEqual(new u128(<u64>0xFFFF * <u64>0xFFFF));
  });

  it("Should power of two return squared number 4", () => {
    var a = new u128(0xFFFF - 1);
    expect<u128>((a ** 2)).toStrictEqual(new u128((0xFFFF - 1) * (0xFFFF - 1)));
  });

  it("Should power of two return squared number with overflow", () => {
    var a = new u128(0, 1);
    expect<u128>((a ** 2)).toStrictEqual(u128.Zero);
  });

  it("Should power of two return squared number with overflow 2", () => {
    var a = new u128(0, 3);
    expect<u128>((a ** 2)).toStrictEqual(u128.Zero);
  });

  it("Should power of three return number", () => {
    var a = new u128(0xFFFF);
    expect<u128>((a ** 3)).toStrictEqual(new u128(0xFFFD0002FFFF));
  });

  it("Should power of three return number 2", () => {
    var a = new u128(12345678);
    expect<u128>((a ** 3)).toStrictEqual(new u128(0x017FEC50E04509B8, 0x66));
  });

  it("Should power of three return number 3", () => {
    var a = new u128(1 << 20);
    expect<u128>((a ** 4)).toStrictEqual(new u128(0, 0x10000));
  });

  it("Should power of three return number 4", () => {
    var a = new u128((1 << 40) + 1);
    expect<u128>((a ** 3)).toStrictEqual(new u128(0x0000030000000001, 0x100000000030000));
  });

  it("Should power of four return number 5", () => {
    var a = new u128(0, 1);
    expect<u128>((a ** 4)).toStrictEqual(u128.Zero);
  });

  it("Should power of 18 return number", () => {
    var a = new u128(123);
    expect<u128>((a ** 18)).toStrictEqual(new u128(0xB8C3F9BBD49E3CD9, 0x1F3D196F2C2AF26A));
  });

  it("Should power of 127 return number 1", () => {
    var a = new u128(2);
    expect<u128>((a ** 127)).toStrictEqual(new u128(0, 0x8000000000000000));
  });

  it("Should power of 127 return number 2", () => {
    var a = new u128(3);
    expect<u128>((a ** 127)).toStrictEqual(new u128(0x2AC0B180838228AB, 0x4C1D8529A9294BCC));
  });

  it("Should power of 128 return zero number", () => {
    var a = new u128(2);
    expect<u128>((a ** 128)).toStrictEqual(u128.Zero);
  });

  it("Should sqrt zero number", () => {
    var a = u128.Zero;
    expect<u128>(u128.sqrt(a)).toStrictEqual(u128.Zero);
  });

  it("Should sqrt one number", () => {
    var a = u128.One;
    expect<u128>(u128.sqrt(a)).toStrictEqual(u128.One);
  });

  it("Should sqrt three number", () => {
    var a = new u128(3);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(1));
  });

  it("Should sqrt four number", () => {
    var a = new u128(4);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(2));
  });

  it("Should sqrt five number", () => {
    var a = new u128(5);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(2));
  });

  it("Should sqrt six number", () => {
    var a = new u128(5);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(2));
  });

  it("Should sqrt nine number", () => {
    var a = new u128(9);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(3));
  });

  it("Should sqrt 64 number", () => {
    var a = new u128(64);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(8));
  });

  it("Should sqrt 1000 number", () => {
    var a = new u128(1000);
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(31));
  });

  it("Should sqrt max value number", () => {
    var a = u128.Max;
    expect<u128>(u128.sqrt(a)).toStrictEqual(new u128(u64.MAX_VALUE));
  });
});

describe("Binary Operation Count", () => {
  it("Should popcount 1", () => {
    expect<i32>(u128.popcnt(u128.Zero)).toBe(0);
  });

  it("Should popcount 2", () => {
    expect<i32>(u128.popcnt(new u128(1))).toBe(1);
  });

  it("Should popcount 3", () => {
    expect<i32>(u128.popcnt(new u128(1, 1))).toBe(2);
  });

  it("Should popcount 4", () => {
    expect<i32>(u128.popcnt(new u128(0, 1))).toBe(1);
  });

  it("Should popcount 5", () => {
    expect<i32>(u128.popcnt(new u128(-1, -1))).toBe(128);
  });

  it("Should count leading zeros 1", () => {
    expect<i32>(u128.clz(u128.Zero)).toBe(128);
  });

  it("Should count leading zeros 2", () => {
    expect<i32>(u128.clz(u128.One)).toBe(127);
  });

  it("Should count leading zeros 3", () => {
    expect<i32>(u128.clz(new u128(0, 1))).toBe(63);
  });

  it("Should count leading zeros 4", () => {
    expect<i32>(u128.clz(new u128(-1, -1))).toBe(0);
  });

  it("Should count trailing zeros 1", () => {
    expect<i32>(u128.ctz(u128.Zero)).toBe(128);
  });

  it("Should count trailing zeros 2", () => {
    expect<i32>(u128.ctz(u128.One)).toBe(0);
  });

  it("Should count trailing zeros 3", () => {
    expect<i32>(u128.ctz(new u128(2))).toBe(1);
  });

  it("Should count trailing zeros 4", () => {
    expect<i32>(u128.ctz(new u128(0, 1))).toBe(64);
  });

  it("Should count trailing zeros 5", () => {
    expect<i32>(u128.ctz(new u128(-1, -1))).toBe(0);
  });

  it("Should count trailing zeros 6", () => {
    expect<i32>(u128.ctz(new u128(0, 0x8000000000000000))).toBe(127);
  });
});

describe("Division And Mod Operation", () => {
  it("Should divide two numbers without remainder 1", () => {
    let a = new u128(10248516657319426282, 5);
    let b = u128.from(2353454354);
    expect<u128>(a / b).toStrictEqual(u128.from(43545453453));
  });

  it("Should divide two numbers without remainder 2", () => {
    let a = new u128(10248516654965971928, 5);
    let b = u128.from(43545453452);
    expect<u128>(a / b).toStrictEqual(u128.from(2353454354));
  });

  it("Should divide two numbers without remainder 3", () => {
    let a = new u128(3152652666208173568, 2);
    let b = u128.from(4354545345312);
    expect<u128>(a / b).toStrictEqual(u128.from(9196400));
  });

  it("Should divide two numbers with remainder 1", () => {
    let a = new u128(3152652666208173568, 2);
    let b = u128.from(43543534534534);
    expect<u128>(a / b).toStrictEqual(u128.from(919680));
  });

  it("Should divide two numbers with remainder 2", () => {
    let a = new u128(3152652666208178,0);
    let b = u128.from(43543534534534);
    expect<u128>(a / b).toStrictEqual(u128.from(72));
  });

  it("Should divide zero with number", () => {
    let a = u128.Zero;
    let b = new u128(10248516654965971928, 5);
    expect<u128>(a / b).toStrictEqual(u128.Zero);
  });

  it("Should divide number with one", () => {
    let a = new u128(10248516654965971928, 5);
    let b = u128.One;
    expect<u128>(a / b).toStrictEqual(a);
  });

  it("Should mod two numbers without remainder 1", () => {
    let a = new u128(10248516657319426282, 5);
    let b = u128.from(2353454354);
    expect<u128>(a % b).toStrictEqual(u128.Zero);
  });

  it("Should mod two numbers without remainder 2", () => {
    let a = new u128(10248516654965971928, 5);
    let b = u128.from(43545453452);
    expect<u128>(a % b).toStrictEqual(u128.Zero);
  });

  it("Should mod two numbers with remainder 1", () => {
    let a = new u128(3152652666208173568, 2);
    let b = u128.from(43543534534534);
    expect<u128>(a % b).toStrictEqual(u128.from(22972907047680));
  });

  it("Should mod two numbers with remainder 2", () => {
    let a = new u128(3152652666208178);
    let b = u128.from(43543534534534);
    expect<u128>(a % b).toStrictEqual(u128.from(17518179721730));
  });

  it("Should mod number with one", () => {
    let a = new u128(10248516654965971928, 5);
    let b = u128.One;
    expect<u128>(a % b).toStrictEqual(u128.Zero);
  });

  it("Should mod number same number", () => {
    let a = new u128(10248516654965971928, 5);
    expect<u128>(a % a).toStrictEqual(u128.Zero);
  });

  it("Should divide two same numbers", () => {
    let a = new u128(10248516654965971928, 5);
    expect<u128>(a / a).toStrictEqual(u128.One);
  });
});

describe("Throwable", () => {
  it("Should throw from string with unsupported radix 1", () => {
    expectFn(() => {
     !(u128.fromString('0000', 1));
    }).toThrow();
  });

  it("Should throw from string with unsupported radix 2", () => {
    expectFn(() => {
     !(u128.fromString('1234', 37));
    }).toThrow();
  });

  it("Should throw from bytes with null 1", () => {
    expectFn(() => {
     !(u128.fromBytes(changetype<u8[]>(null)));
    }).toThrow();
  });

  it("Should throw from bytes with null 2", () => {
    expectFn(() => {
      !(u128.fromBytes(changetype<u8[]>(null), true));
    }).toThrow();
  });

  it("Should throw from bytes with wrong byte array length 1", () => {
    expectFn(() => {
     !(u128.fromBytes<u8[]>([]));
    }).toThrow();
  });

  it("Should throw from bytes with wrong byte array length 2", () => {
    expectFn(() => {
     !(u128.fromBytes<u8[]>([], true));
    }).toThrow();
  });

  it("Should throw from bytes with wrong byte array length 3", () => {
    expectFn(() => {
     !(u128.fromBytes<u8[]>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]));
    }).toThrow();
  });

  it("Should throw from bytes with wrong byte array length 4", () => {
    expectFn(() => {
     !(u128.fromBytes<u8[]>([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17], true));
    }).toThrow();
  });

  it("Should throw from bytes with wrong byte array length 5", () => {
    expectFn(() => {
      !(u128.fromBytes<Uint8Array>(new Uint8Array(0)));
    }).toThrow();
  });

  it("Should throw from bytes with wrong byte array length 6", () => {
    expectFn(() => {
      !(u128.fromBytes<Uint8Array>(new Uint8Array(0), true));
    }).toThrow();
  });

  it("Should throw from bytes with wrong byte array length 7", () => {
    expectFn(() => {
      let arr = new Uint8Array(18);
      for (let i = 0; i < 18; i++) {
        arr[i] = <u8>i;
      }
     !(u128.fromBytes<Uint8Array>(arr));
    }).toThrow();
  });

  it("Should throw from bytes with wrong byte array length 8", () => {
    expectFn(() => {
      let arr = new Uint8Array(18);
      for (let i = 0; i < 18; i++) {
        arr[i] = <u8>i;
      }
     !(u128.fromBytes<Uint8Array>(arr, true));
    }).toThrow();
  });

  it("Should throw when divide number by zero", () => {
    expectFn(() => {
      let a = new u128(1, 1);
      !(a / u128.Zero);
    }).toThrow();
  });

  it("Should throw when mod number by zero", () => {
    expectFn(() => {
      let a = new u128(1, 1);
      !(a % u128.Zero);
    }).toThrow();
  });
});
