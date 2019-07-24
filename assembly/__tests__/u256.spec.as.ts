import { u256 } from '../../assembly/integer/u256';


describe("String Conversion", () => {
  it("Should convert to decimal string 1", () => {
    var a = new u256(10248516654965971928, 5, 0, 0);
    expect<string>('102482237023513730008').toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 2", () => {
    var a = new u256(1, 1, 1, 1);
    expect<string>('6277101735386680764176071790128604879584176795969512275969').toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 3", () => {
    var a = u256.Max;
    expect<string>('115792089237316195423570985008687907853269984665640564039457584007913129639935').toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 4", () => {
    var a = u256.Zero;
    expect<string>('0').toStrictEqual(a.toString());
  });
});

describe("Buffer Conversion", () => {
  it("Should convert from bytes Little Endian 1", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    expect<u256>(u256.fromBytes(arr)).toStrictEqual(new u256(0x8877665544332211, 0x12ffeeddccbbaa99, 0x8877665544332211, 0x12ffeeddccbbaa99));
  });

  it("Should convert from bytes Little Endian 2", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect<u256>(u256.fromBytes(arr)).toStrictEqual(new u256(0x8877665544332211, 0x12ffeeddccbbaa99, 0x8877665544332211, 0x12ffeeddccbbaa99));
  });

  it("Should convert from bytes Big Endian 1", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect<u256>(u256.fromBytes(arr, true)).toStrictEqual(new u256(0x99aabbccddeeff12, 0x1122334455667788, 0x99aabbccddeeff12, 0x1122334455667788));
  });

  it("Should convert from bytes Big Endian 2", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect<u256>(u256.fromBytes(arr, true)).toStrictEqual(new u256(0x99aabbccddeeff12, 0x1122334455667788, 0x99aabbccddeeff12, 0x1122334455667788));
  });

  it("Should convert to bytes Litte Endian 1", () => {
    var u = new u256(0x8877665544332211, 0x12ffeeddccbbaa99, 0x8877665544332211, 0x12ffeeddccbbaa99);
    var a = u.toBytes();
    expect<bool>(
        a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
        a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
        a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
        a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
        a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
        a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
        a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
        a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
    ).toBe(true);
  });

  it("Should convert to bytes Litte Endian 2", () => {
    var u = new u256(0x8877665544332211, 0x12ffeeddccbbaa99, 0x8877665544332211, 0x12ffeeddccbbaa99);
    var a = u.toUint8Array();
    expect<bool>(
        a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
        a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
        a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
        a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
        a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
        a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
        a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
        a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
    ).toBe(true);
  });

  it("Should convert to bytes Big Endian 1", () => {
    var u = new u256(0x99aabbccddeeff12, 0x1122334455667788, 0x99aabbccddeeff12, 0x1122334455667788);
    var a = u.toBytes(true);
    expect<bool>(
      a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
      a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
      a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
      a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
      a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
      a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
      a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
      a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
    ).toBe(true);
  });

  it("Should convert to bytes Big Endian 2", () => {
    var u = new u256(0x99aabbccddeeff12, 0x1122334455667788, 0x99aabbccddeeff12, 0x1122334455667788);
    var a = u.toUint8Array(true);
    expect<bool>(
        a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
        a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
        a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
        a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
        a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
        a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
        a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
        a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
    ).toBe(true);
  });
});

describe("Basic Operations", () => {
  it("Should number is zero 1", () => {
    var a = u256.Zero;
    expect<bool>(a.isZero()).toBe(true);
  });

  it("Should number is zero 2", () => {
    var a = u256.One;
    expect<bool>(!a.isZero()).toBe(true);
  });

  it("Should number binary not", () => {
    var a = new u256(1, 2, 3, 4);
    expect<u256>(~a).toStrictEqual(new u256(~1, ~2, ~3, ~4));
  });

  it("Should number unary positive", () => {
    var a = new u256(1, 2, 3, 4);
    expect<u256>(a).toStrictEqual(+a);
  });

  it("Should number non empty", () => {
    var a = u256.One;
    expect<bool>(!!a).toBe(true);
  });

  it("Should number is empty 1", () => {
    var a = u256.Zero;
    expect<bool>(!a).toBe(true);
  });
});
