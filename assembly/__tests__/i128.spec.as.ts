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
    var a = i128.Zero;
    expect(a.isZero()).toBe(true);
  });

  it("Should number is zero 2", () => {
    var a = i128.One;
    expect(!a.isZero()).toBe(true);
  });

  it("Should number binary not", () => {
    var a = new i128(1, 2);
    expect(~a).toStrictEqual(new i128(~1, ~2));
  });

  it("Should number unary positive", () => {
    var a = new i128(1, 2);
    expect(+a).toStrictEqual(a);
  });

  it("Should number non empty", () => {
    var a = i128.One;
    expect(!!a).toBe(true);
  });

  it("Should number is empty 1", () => {
    var a = i128.Zero;
    expect(!a).toBe(true);
  });

  it("Should number is empty 2", () => {
    expect(!changetype<i128>(null)).toBe(true);
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
