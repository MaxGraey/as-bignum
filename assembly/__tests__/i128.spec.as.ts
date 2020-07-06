import { i128 } from '../../assembly/integer/i128';
import { arrayToUint8Array } from "./utils";

describe("String Conversion", () => {
  // TODO: tests
});

describe("Buffer Conversion", () => {
  // TODO: tests
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

  it("Should number is empty 2", () => {
    expect(!changetype<i128>(null)).toBe(true);
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
});

describe("Exponention Operation", () => {
  // TODO: tests
});

describe("Binary Operation Count", () => {
  // TODO: tests
});

describe("Division And Mod Operation", () => {
  // TODO: tests
});

describe("Throwable", () => {
  // TODO: tests
});
