import { u128 } from '../integer';
import { i128 } from '../integer/i128';
import { arrayToUint8Array } from "./utils";

// describe("String Conversion", () => {
//   // TODO: tests
// });

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

describe("Basic Type Conversion", () => {
  // TODO: tests
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
  it("Should left shift one number", () => {
    var a = new i128(1, 0);
    expect(a << 65).toStrictEqual(new i128(0, 2));
  });

  it("Should periodic left shift one number", () => {
    var a = new i128(1, 0);
    expect(a << (65 + 128)).toStrictEqual(new i128(0, 2));
  });

  it("Should invariant left shift zero number", () => {
    var a = new i128(1, 1);
    expect(a << 0).toStrictEqual(a);
  });
  it("Should multiplication 1", () => {
    let a = u128.from(57326);
    let b = u128.from(144873);
    expect(i128.mul(a.toI128(),b.toI128())).toStrictEqual(u128.mul(a,b).toI128());
  });
  it("Should multiplication 2", () => {
    let a = i128.One;
    expect(i128.mul(a,a)).toStrictEqual(a);
  });
  it("Should multiplication 3", () => {
    let a = i128.One;
    let b = i128.fromI32(2);
    expect(i128.mul(a,b)).toStrictEqual(b);
  });
  it("Should multiplication 4", () => {
    let b = i128.fromI32(2);
    let c = i128.fromI32(3);
    let d = i128.fromI32(6);
    expect(i128.mul(b,c)).toStrictEqual(d);
  });
  it("Should Division 1", () => {
    let a = u128.from(7);
    let b = u128.from(144873);
    expect(i128.div(b.toI128(),a.toI128())).toStrictEqual(u128.div(b,a).toI128());
  });
  it("Should Division 2", () => {
    let a = i128.One;
    expect(i128.div(a,a)).toStrictEqual(a);
  });
  it("Should Division 3", () => {
    let a = i128.One;
    let b = i128.fromI32(2);
    expect(i128.div(b,a)).toStrictEqual(b);
  });
  it("Should Division 4", () => {
    let b = i128.fromI32(2);
    let c = i128.fromI32(3);
    let d = i128.fromI32(6);
    expect(i128.div(d,c)).toStrictEqual(b);
  });
  it("Should Division 5", () => {
    let b = i128.fromI32(-1);
    let c = i128.fromI32(3);
    let d = i128.Zero.neg();
    expect(i128.div(b,c)).toStrictEqual(d);
  });
  it("Should Division 6", () => {
    let b = i128.fromI32(-5);
    let c = i128.fromI32(3);
    let d = i128.NegOne;
    expect(i128.div(b,c)).toStrictEqual(d);
  });
  it("Should Division 7", () => {
    let b = i128.fromI32(-7);
    let c = i128.fromI32(-2);
    let d = i128.fromI32(3);
    expect(i128.div(b,c)).toStrictEqual(d);
  });
  it("Should Division 8", () => {
    let b = i128.fromI32(7);
    let c = i128.fromI32(-3);
    let d = i128.fromI32(-2);
    expect(i128.div(b,c)).toStrictEqual(d);
  });
});

// describe("Exponention Operation", () => {
//   // TODO: tests
// });

// describe("Binary Operation Count", () => {
//   // TODO: tests
// });

describe("Division And Mod Operation", () => {
  it('should divide two positive numbers correctly', () => {
    let a = i128.from(10);
    let b = i128.from(2);
    expect(i128.div(a, b)).toStrictEqual(i128.from(5));
  });
  it('should divide a negative number by a positive number correctly', () => {
    let a = i128.from(-10);
    let b = i128.from(2);
    expect(i128.div(a, b)).toStrictEqual(i128.from(-5));
  });
  it('should divide a positive number by a negative number correctly', () => {
    let a = i128.from(10);
    let b = i128.from(-2);
    expect(i128.div(a, b)).toStrictEqual(i128.from(-5));
  });
  it('should divide two negative numbers correctly', () => {
    let a = i128.from(-10);
    let b = i128.from(-2);
    expect(i128.div(a, b)).toStrictEqual(i128.from(5));
  });

  it("Should divide two numbers without remainder 1", () => {
    let a = new i128(10248516657319426282, 5);
    let b = i128.from(2353454354);
    expect(a / b).toStrictEqual(i128.from(43545453453));
  });

  it("Should divide two numbers without remainder 2", () => {
    let a = new i128(10248516654965971928, 5);
    let b = i128.from(43545453452);
    expect(a / b).toStrictEqual(i128.from(2353454354));
  });

  it("Should divide two numbers without remainder 3", () => {
    let a = new i128(3152652666208173568, 2);
    let b = i128.from(4354545345312);
    expect(a / b).toStrictEqual(i128.from(9196400));
  });

  it("Should divide two numbers with remainder 1", () => {
    let a = new i128(3152652666208173568, 2);
    let b = i128.from(43543534534534);
    expect(a / b).toStrictEqual(i128.from(919680));
  });

  it("Should divide two numbers with remainder 2", () => {
    let a = new i128(3152652666208178,0);
    let b = i128.from(43543534534534);
    expect(a / b).toStrictEqual(i128.from(72));
  });

  it("Should divide zero with number", () => {
    let a = i128.Zero;
    let b = new i128(10248516654965971928, 5);
    expect(a / b).toStrictEqual(i128.Zero);
  });

  it("Should divide number with one", () => {
    let a = new i128(10248516654965971928, 5);
    let b = i128.One;
    expect(a / b).toStrictEqual(a);
  });

  it("Should divide two same numbers", () => {
    let a = new i128(10248516654965971928, 5);
    expect(a / a).toStrictEqual(i128.One);
  });

  it("Should div number same max value", () => {
    let a = i128.Max;
    expect(a / a).toStrictEqual(i128.One);
  });
});

describe("Throwable", () => {
  // TODO: tests
  it("Should throw Division", () => {
    expect(() => {
      let b = i128.Min;
      let c = i128.NegOne;
      i128.div(b,c);
    }).toThrow();
  });
});
