import { i128 } from '../integer/i128';
import { i256 } from '../integer/i256';
import { u256 } from '../integer/u256';
import { u128 } from '../integer/u128';
import { arrayToUint8Array } from "./utils";


describe("Buffer Conversion", () => {
  it("Should convert from bytes Little Endian 1", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    expect(i128.fromBytes(arr))
      .toStrictEqual(new i128(0x8877665544332211, 0x12FFEEDDCCBBAA99));
  });

  it("Should convert from bytes Little Endian 2", () => {
    var arr = arrayToUint8Array([
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x00,
      0x00, 0x77, 0x66, 0x55, 0x44, 0x33, 0x22, 0x11
    ]);
    expect(i128.fromBytes(arr))
      .toStrictEqual(new i128(0x0077665544332211, 0x1122334455667700));
  });

  it("Should convert from bytes Big Endian 1", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    expect(i128.fromBytes(arr, true))
      .toStrictEqual(new i128(0x99AABBCCDDEEFF12, 0x1122334455667788));
  });

  it("Should convert from bytes Big Endian 2", () => {
    var arr = arrayToUint8Array([
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ]);
    expect(i128.fromBytes(arr, true))
      .toStrictEqual(new i128(0x99AABBCCDDEEFF12, 0x1122334455667788));
  });
});

describe("Basic Operations", () => {
  it("Should number is zero 1", () => {
    let a = i128.Zero;
    expect(a.isZero()).toBe(true);
  });

  it("Should number is zero 2", () => {
    let a = i128.One;
    expect(!a.isZero()).toBe(true);
  });

  it("Should number binary not", () => {
    let a = new i128(1, 2);
    expect(~a).toStrictEqual(new i128(~1, ~2));
  });

  it("Should number unary positive", () => {
    let a = new i128(1, 2);
    expect(+a).toStrictEqual(a);
  });

  it("Should number non empty", () => {
    let a = i128.One;
    expect(!!a).toBe(true);
  });

  it("Should number is empty 1", () => {
    let a = i128.Zero;
    expect(!a).toBe(true);
  });

  it("Should neg(1) == -1", () => {
    let one = i128.One;
    let neg = one.neg();
    expect(<u64>neg.lo).toBe(<u64>-1);
    expect(<u64>neg.hi).toBe(<u64>-1);
  });

  it("Should abs(-1) == 1", () => {
    let one = i128.One;
    let neg = -one;
    expect(i128.abs(neg)).toStrictEqual(one);
  });

  it("Should handle i128(1) + i128(-1) => 0", () => {
    let a = i128.fromI64(1);
    let b = i128.fromI64(-1);

    let sum = a + b;
    expect(sum.isZero()).toBe(
      true,
      "Expected 1 + -1 == 0 for 128-bit signed arithmetic"
    );
  });

  it("Should add two negative numbers", () => {
    // -2 + -3 = -5
    let a = i128.fromI64(-2);
    let b = i128.fromI64(-3);
    let result = a + b;
    let expected = i128.fromI64(-5);

    expect(result.lo).toBe(expected.lo);
    expect(result.hi).toBe(expected.hi);
  });

  it("Should subtract negative from positive (5 - (-1) => 6)", () => {
    let a = i128.fromI64(5);
    let b = i128.fromI64(-1);
    let diff = a - b;
    let expected = i128.fromI64(6);

    expect(diff.lo).toBe(expected.lo);
    expect(diff.hi).toBe(expected.hi);
  });

  it("Should handle -1 - 1 => -2 properly", () => {
    let a = i128.fromI64(-1);
    let b = i128.fromI64(1);
    let diff = a - b;
    let expected = i128.fromI64(-2);

    expect(diff.lo).toBe(expected.lo);
    expect(diff.hi).toBe(expected.hi);
  });

  it("Should unary negate a positive number", () => {
    let a = i128.fromI64(10);
    let negA = -a;
    let expected = i128.fromI64(-10);

    expect(negA.lo).toBe(expected.lo);
    expect(negA.hi).toBe(expected.hi);
  });

  it("Should unary negate zero => 0", () => {
    let a = i128.Zero;
    expect(-a).toStrictEqual(i128.Zero);
  });

  it("Should add large positives without overflow in 128 bits", () => {
    let x = i128.fromBits(0xffffffff, 0xffffffff, 0, 0); // ~2^64 - 1
    let y = i128.fromI64(1);
    let sum = x + y;
    // ~2^64 => lo=0, hi=1
    expect(sum.lo).toBe(0);
    expect(sum.hi).toBe(1);
  });

  it("Should add causing sign bit flip negative -> positive", () => {
    // -1 => lo=0xFFFFFFFFFFFFFFFF, hi=0xFFFFFFFFFFFFFFFF
    let x = new i128(0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF);
    let y = i128.fromI64(2);
    let result = x + y;

    expect(result.lo).toBe(1, "Should be 1 in lo");
    expect(result.hi).toBe(0, "Should be 0 in hi");
  });

  it("Should do normal bitwise ops on i128", () => {
    let a = i128.fromI64(0xFF00FF00);
    let b = i128.fromI64(0x0F0F0F0F);

    // OR => 0xFF0FFF0F
    let orResult = i128.fromI64(0xFF0FFF0F);
    expect(a | b).toStrictEqual(orResult);

    // AND => 0x0F000F00
    let andResult = i128.fromI64(0x0F000F00);
    expect(a & b).toStrictEqual(andResult);

    // XOR => 0xF00FF00F
    let xorResult = i128.fromI64(0xF00FF00F);
    expect(a ^ b).toStrictEqual(xorResult);
  });

  it("Should shift left", () => {
    // i128(1) << 63 => lo=1<<63, hi=0
    let a = i128.fromI64(1);
    let shifted = a << 63;
    expect(shifted.lo).toBe(0x8000000000000000);
    expect(shifted.hi).toBe(0);
  });

  it("Should shift right unsigned (>>>)", () => {
    // -1 => lo=0xffffffffffffffff, hi=0xffffffffffffffff
    // (>>> 64) => lo=0xffffffffffffffff, hi=0 => per shr_u logic
    let a = i128.fromI64(-1);
    let shifted = a >>> 64;
    expect(shifted.lo).toBe(0xffffffffffffffff);
    expect(shifted.hi).toBe(0);
  });
});

//-----------------------------------------------------------------------------------//
// New / Extended Tests for Full Coverage
//-----------------------------------------------------------------------------------//

describe("Constants: Zero, One, Min, Max", () => {
  it("Should have Zero = 0", () => {
    let z = i128.Zero;
    expect(z.isZero()).toBe(true);
    expect(z.isPos()).toBe(true); // 0 isn't negative
    expect(z.isNeg()).toBe(false);
  });

  it("Should have One = 1", () => {
    let o = i128.One;
    expect(o.lo).toBe(1);
    expect(o.hi).toBe(0);
  });

  it("Should have Min < 0", () => {
    let m = i128.Min;
    expect(m.isNeg()).toBe(true);
    expect(m < i128.Zero).toBe(true);
  });

  it("Should have Max > 0", () => {
    let m = i128.Max;
    expect(m.isPos()).toBe(true);
    expect(m > i128.Zero).toBe(true);
  });
});

describe("Creation from various numeric types", () => {
  it("Should create fromI64", () => {
    let val = i128.fromI64(-12345);
    expect(val.lo).toBe(<u64>-12345);
    expect(val.hi).toBe(-1); // sign-extended
  });

  it("Should create fromU64", () => {
    let val = i128.fromU64(12345);
    expect(val.lo).toBe(12345);
    expect(val.hi).toBe(0);
  });

  it("Should create fromI32", () => {
    let val = i128.fromI32(-12345);
    expect(val.lo).toBe(<u64>-12345);
    expect(val.hi).toBe(-1);
  });

  it("Should create fromU32", () => {
    let val = i128.fromU32(123456789);
    expect(val.lo).toBe(123456789);
    expect(val.hi).toBe(0);
  });

  it("Should create fromF64 small", () => {
    let val = i128.fromF64(42.0);
    expect(val.lo).toBe(42);
    expect(val.hi).toBe(0);
  });

  it("Should create fromF64 negative", () => {
    let val = i128.fromF64(-42.0);
    expect(val.lo).toBe(<u64>-42);
    expect(val.hi).toBe(-1);
  });

  it("Should create fromF32 small", () => {
    let val = i128.fromF32(13.0);
    expect(val.lo).toBe(13);
    expect(val.hi).toBe(0);
  });
});

describe("Creation from i128, u128, i256, u256, fromBits", () => {
  it("Should create fromI128", () => {
    let original = new i128(1234, 5678);
    let copy = i128.fromI128(original);
    expect(copy.lo).toBe(1234);
    expect(copy.hi).toBe(5678);
  });

  it("Should create fromU128", () => {
    let uval = new u128(9999, 1111);
    let sval = i128.fromU128(uval);
    expect(sval.lo).toBe(9999);
    expect(sval.hi).toBe(<i64>1111);
  });

  it("Should create fromI256 (truncation test)", () => {
    let big = new i256(0xCCBBAA9988776655, 0x1122334455667788, -1, 12345);
    // fromI256 truncates top bits
    let truncated = i128.fromI256(big);
    expect(truncated.lo).toBe(0xCCBBAA9988776655);
    // lo2 = hi of i128 = 0x1122334455667788 truncated to i64
    expect(truncated.hi).toBe(<i64>0x1122334455667788);
  });

  it("Should create fromU256 (truncation test)", () => {
    let bigu = new u256(0xAAAABBBBCCCCDDDD, 0x0123456789ABCDEF, 0, 42);
    let truncated = i128.fromU256(bigu);
    expect(truncated.lo).toBe(0xAAAABBBBCCCCDDDD);
    expect(truncated.hi).toBe(<i64>0x0123456789ABCDEF);
  });

  it("Should create fromBits", () => {
    // fromBits(lo1, lo2, hi1, hi2)
    // lo = lo1 + (lo2<<32), hi = hi1 + (hi2<<32)
    let val = i128.fromBits(0x11223344, 0x55667788, 0x99AABBCC, 0xDDEEFF00);
    expect(val.lo).toBe(
      0x55667788_11223344
    );
    expect(val.hi).toBe(
      0xDDEEFF00_99AABBCC as i64
    );
  });
});

describe("i128.fromString tests", () => {
  it("Should parse positive decimal", () => {
    let val = i128.fromString("12345");
    expect(val).toStrictEqual(i128.fromI64(12345));
  });

  it("Should parse negative decimal", () => {
    let val = i128.fromString("-98765");
    expect(val).toStrictEqual(i128.fromI64(-98765));
  });

  it("Should parse hex string (positive)", () => {
    let val = i128.fromString("FF", 16);
    expect(val).toStrictEqual(i128.fromI64(255));
  });

  it("Should parse hex string (negative)", () => {
    let val = i128.fromString("-FF", 16);
    expect(val).toStrictEqual(i128.fromI64(-255));
  });
});

describe("i128.from<T>(value) tests", () => {
  it("Should create from<bool>", () => {
    expect(i128.from<bool>(true)).toStrictEqual(i128.One);
    expect(i128.from<bool>(false)).toStrictEqual(i128.Zero);
  });

  it("Should create from<i8>", () => {
    expect(i128.from<i8>(-5)).toStrictEqual(i128.fromI64(-5));
    expect(i128.from<i8>(5)).toStrictEqual(i128.fromI64(5));
  });

  it("Should create from<u8>", () => {
    expect(i128.from<u8>(255)).toStrictEqual(i128.fromI64(255));
  });

  it("Should create from<i16>", () => {
    expect(i128.from<i16>(-300)).toStrictEqual(i128.fromI64(-300));
  });

  it("Should create from<u16>", () => {
    expect(i128.from<u16>(65535)).toStrictEqual(i128.fromI64(65535));
  });

  it("Should create from<i128>", () => {
    let x = new i128(0x11111111, 0x22222222);
    let y = i128.from<i128>(x);
    expect(y.lo).toBe(x.lo);
    expect(y.hi).toBe(x.hi);
  });

  it("Should create from<f32>", () => {
    let x = 123.0 as f32;
    let val = i128.from<f32>(x);
    expect(val).toStrictEqual(i128.fromI64(123));
  });
});

describe("isPos, isNeg coverage", () => {
  it("Should be positive", () => {
    let x = i128.fromI64(100);
    expect(x.isPos()).toBe(true);
    expect(x.isNeg()).toBe(false);
  });

  it("Should be negative", () => {
    let y = i128.fromI64(-50);
    expect(y.isPos()).toBe(false);
    expect(y.isNeg()).toBe(true);
  });
});

describe("popcnt, clz, ctz coverage", () => {
  it("Should popcnt of zero => 0", () => {
    expect(i128.popcnt(i128.Zero)).toBe(0);
  });

  it("Should popcnt of example => correct bit count", () => {
    let val = new i128(0b1010, 0); // 2 bits set
    expect(i128.popcnt(val)).toBe(2);
  });

  it("Should clz(Zero) handle properly", () => {
    // Usually clz(0) => 128 if the fallback is that 0 has 128 leading zero bits
    let c = i128.clz(i128.Zero);
    expect(c).toBe(128, "clz(0) should be 128 in typical 128-bit logic");
  });

  it("Should clz with high bits set", () => {
    // e.g. new i128(0, 0x8000000000000000) => highest bit
    let val = new i128(0, 0x8000000000000000);
    let c = i128.clz(val);
    expect(c).toBe(0, "Leading bit is the topmost bit of hi => 0");
  });

  it("Should ctz(Zero) => 128 typically", () => {
    // ctz(0) can be 128 as well
    let c = i128.ctz(i128.Zero);
    expect(c).toBe(128, "ctz(0) should be 128 in typical 128-bit logic");
  });

  it("Should ctz example", () => {
    // e.g. new i128(0b100000, 0) => trailing zero bits = 5
    let val = i128.fromI64(1 << 5);
    expect(i128.ctz(val)).toBe(5);
  });
});

describe("ord coverage", () => {
  it("Should return 0 for eq", () => {
    let a = i128.fromI64(123);
    let b = i128.fromI64(123);
    expect(i128.ord(a, b)).toBe(0);
  });

  it("Should return -1 for a<b", () => {
    let a = i128.fromI64(-100);
    let b = i128.fromI64(50);
    expect(i128.ord(a, b)).toBe(-1);
  });

  it("Should return +1 for a>b", () => {
    let a = i128.fromI64(1000);
    let b = i128.fromI64(999);
    expect(i128.ord(a, b)).toBe(1);
  });
});

describe("toBytes, toStaticBytes, toUint8Array coverage", () => {
  it("Should produce correct LE bytes", () => {
    let val = new i128(0x8877665544332211, 0x1122334455667788);
    let bytes = val.toBytes(false); // LE
    // lo = 11 22 33 44 55 66 77 88
    // hi = 88 77 66 55 44 33 22 11
    expect(bytes.length).toBe(16);
    expect(bytes[0]).toBe(0x11);
    expect(bytes[1]).toBe(0x22);
    expect(bytes[8]).toBe(0x88);
    expect(bytes[9]).toBe(0x77);
  });

  it("Should produce correct BE bytes", () => {
    let val = new i128(0x8877665544332211, 0x1122334455667788);
    let bytes = val.toBytes(true); // BE
    // hi => 0x1122334455667788 => reversed as big-endian
    // lo => 0x8877665544332211 => reversed
    expect(bytes[0]).toBe(0x11);
    expect(bytes[1]).toBe(0x22);
    expect(bytes[7]).toBe(0x88);
    expect(bytes[8]).toBe(0x88);
    expect(bytes[15]).toBe(0x11);
  });

  it("Should produce correct toStaticBytes", () => {
    let val = i128.fromI64(0xAABBCCDD);
    let stat = val.toStaticBytes(); // LE by default
    expect(stat.length).toBe(16);
    expect(stat[0]).toBe(0xDD);
    expect(stat[1]).toBe(0xCC);
    expect(stat[2]).toBe(0xBB);
    expect(stat[3]).toBe(0xAA);
    // the rest should be zero
  });

  it("Should produce correct toUint8Array BE", () => {
    let val = new i128(0x0000000000000001, 0x0000000000000002);
    let arr = val.toUint8Array(true);
    expect(arr.length).toBe(16);
    // hi=2 => big-endian => top 8 bytes will represent hi=2
    expect(arr[0]).toBe(0x00);
    expect(arr[7]).toBe(0x02);
    // lo=1 => last 8 bytes
    expect(arr[8]).toBe(0x00);
    expect(arr[15]).toBe(0x01);
  });
});
