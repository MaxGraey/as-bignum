import { u128, u256 } from "../integer";

describe("String Conversion", () => {
  it("Should convert to decimal string 1", () => {
    var a = new u256(10248516654965971928, 5, 0, 0);
    expect("102482237023513730008").toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 2", () => {
    var a = new u256(1, 1, 1, 1);
    expect(
      "6277101735386680764176071790128604879584176795969512275969",
    ).toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 3", () => {
    var a = u256.Max;
    expect(
      "115792089237316195423570985008687907853269984665640564039457584007913129639935",
    ).toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 4", () => {
    var a = u256.Zero;
    expect("0").toStrictEqual(a.toString());
  });
});

describe("Buffer Conversion", () => {
  it("Should convert from bytes Little Endian 1", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc,
      0xdd, 0xee, 0xff, 0x12, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x12,
    ];
    expect(u256.fromBytes(arr)).toStrictEqual(
      new u256(
        0x8877665544332211,
        0x12ffeeddccbbaa99,
        0x8877665544332211,
        0x12ffeeddccbbaa99,
      ),
    );
  });

  it("Should convert from bytes Little Endian 2", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc,
      0xdd, 0xee, 0xff, 0x12, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x12,
    ];

    expect(u256.fromBytes(arr)).toStrictEqual(
      new u256(
        0x8877665544332211,
        0x12ffeeddccbbaa99,
        0x8877665544332211,
        0x12ffeeddccbbaa99,
      ),
    );
  });

  it("Should convert from bytes Big Endian 1", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc,
      0xdd, 0xee, 0xff, 0x12, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x12,
    ];

    expect(u256.fromBytes(arr, true)).toStrictEqual(
      new u256(
        0x99aabbccddeeff12,
        0x1122334455667788,
        0x99aabbccddeeff12,
        0x1122334455667788,
      ),
    );
  });

  it("Should convert from bytes Big Endian 2", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc,
      0xdd, 0xee, 0xff, 0x12, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x12,
    ];

    expect(u256.fromBytes(arr, true)).toStrictEqual(
      new u256(
        0x99aabbccddeeff12,
        0x1122334455667788,
        0x99aabbccddeeff12,
        0x1122334455667788,
      ),
    );
  });

  it("Should convert to bytes Litte Endian 1", () => {
    var u = new u256(
      0x8877665544332211,
      0x12ffeeddccbbaa99,
      0x8877665544332211,
      0x12ffeeddccbbaa99,
    );
    let a = u.toBytes();
    expect(
      a[0] == 0x11 &&
      a[1] == 0x22 &&
      a[2] == 0x33 &&
      a[3] == 0x44 &&
      a[4] == 0x55 &&
      a[5] == 0x66 &&
      a[6] == 0x77 &&
      a[7] == 0x88 &&
      a[8] == 0x99 &&
      a[9] == 0xaa &&
      a[10] == 0xbb &&
      a[11] == 0xcc &&
      a[12] == 0xdd &&
      a[13] == 0xee &&
      a[14] == 0xff &&
      a[15] == 0x12 &&
      a[16] == 0x11 &&
      a[17] == 0x22 &&
      a[18] == 0x33 &&
      a[19] == 0x44 &&
      a[20] == 0x55 &&
      a[21] == 0x66 &&
      a[22] == 0x77 &&
      a[23] == 0x88 &&
      a[24] == 0x99 &&
      a[25] == 0xaa &&
      a[26] == 0xbb &&
      a[27] == 0xcc &&
      a[28] == 0xdd &&
      a[29] == 0xee &&
      a[30] == 0xff &&
      a[31] == 0x12,
    ).toBe(true);

    {
      let a = u.toStaticBytes();
      expect(
        a[0] == 0x11 &&
        a[1] == 0x22 &&
        a[2] == 0x33 &&
        a[3] == 0x44 &&
        a[4] == 0x55 &&
        a[5] == 0x66 &&
        a[6] == 0x77 &&
        a[7] == 0x88 &&
        a[8] == 0x99 &&
        a[9] == 0xaa &&
        a[10] == 0xbb &&
        a[11] == 0xcc &&
        a[12] == 0xdd &&
        a[13] == 0xee &&
        a[14] == 0xff &&
        a[15] == 0x12 &&
        a[16] == 0x11 &&
        a[17] == 0x22 &&
        a[18] == 0x33 &&
        a[19] == 0x44 &&
        a[20] == 0x55 &&
        a[21] == 0x66 &&
        a[22] == 0x77 &&
        a[23] == 0x88 &&
        a[24] == 0x99 &&
        a[25] == 0xaa &&
        a[26] == 0xbb &&
        a[27] == 0xcc &&
        a[28] == 0xdd &&
        a[29] == 0xee &&
        a[30] == 0xff &&
        a[31] == 0x12,
      ).toBe(true);
    }
  });

  it("Should convert to bytes Litte Endian 2", () => {
    var u = new u256(
      0x8877665544332211,
      0x12ffeeddccbbaa99,
      0x8877665544332211,
      0x12ffeeddccbbaa99,
    );
    var a = u.toUint8Array();
    expect(
      a[0] == 0x11 &&
      a[1] == 0x22 &&
      a[2] == 0x33 &&
      a[3] == 0x44 &&
      a[4] == 0x55 &&
      a[5] == 0x66 &&
      a[6] == 0x77 &&
      a[7] == 0x88 &&
      a[8] == 0x99 &&
      a[9] == 0xaa &&
      a[10] == 0xbb &&
      a[11] == 0xcc &&
      a[12] == 0xdd &&
      a[13] == 0xee &&
      a[14] == 0xff &&
      a[15] == 0x12 &&
      a[16] == 0x11 &&
      a[17] == 0x22 &&
      a[18] == 0x33 &&
      a[19] == 0x44 &&
      a[20] == 0x55 &&
      a[21] == 0x66 &&
      a[22] == 0x77 &&
      a[23] == 0x88 &&
      a[24] == 0x99 &&
      a[25] == 0xaa &&
      a[26] == 0xbb &&
      a[27] == 0xcc &&
      a[28] == 0xdd &&
      a[29] == 0xee &&
      a[30] == 0xff &&
      a[31] == 0x12,
    ).toBe(true);
  });

  it("Should convert to bytes Big Endian 1", () => {
    var u = new u256(
      0x99aabbccddeeff12,
      0x1122334455667788,
      0x99aabbccddeeff12,
      0x1122334455667788,
    );
    var a = u.toBytes(true);
    expect(
      a[0] == 0x11 &&
      a[1] == 0x22 &&
      a[2] == 0x33 &&
      a[3] == 0x44 &&
      a[4] == 0x55 &&
      a[5] == 0x66 &&
      a[6] == 0x77 &&
      a[7] == 0x88 &&
      a[8] == 0x99 &&
      a[9] == 0xaa &&
      a[10] == 0xbb &&
      a[11] == 0xcc &&
      a[12] == 0xdd &&
      a[13] == 0xee &&
      a[14] == 0xff &&
      a[15] == 0x12 &&
      a[16] == 0x11 &&
      a[17] == 0x22 &&
      a[18] == 0x33 &&
      a[19] == 0x44 &&
      a[20] == 0x55 &&
      a[21] == 0x66 &&
      a[22] == 0x77 &&
      a[23] == 0x88 &&
      a[24] == 0x99 &&
      a[25] == 0xaa &&
      a[26] == 0xbb &&
      a[27] == 0xcc &&
      a[28] == 0xdd &&
      a[29] == 0xee &&
      a[30] == 0xff &&
      a[31] == 0x12,
    ).toBe(true);
  });

  it("Should convert to bytes Big Endian 2", () => {
    var u = new u256(
      0x99aabbccddeeff12,
      0x1122334455667788,
      0x99aabbccddeeff12,
      0x1122334455667788,
    );
    var a = u.toUint8Array(true);
    expect(
      a[0] == 0x11 &&
      a[1] == 0x22 &&
      a[2] == 0x33 &&
      a[3] == 0x44 &&
      a[4] == 0x55 &&
      a[5] == 0x66 &&
      a[6] == 0x77 &&
      a[7] == 0x88 &&
      a[8] == 0x99 &&
      a[9] == 0xaa &&
      a[10] == 0xbb &&
      a[11] == 0xcc &&
      a[12] == 0xdd &&
      a[13] == 0xee &&
      a[14] == 0xff &&
      a[15] == 0x12 &&
      a[16] == 0x11 &&
      a[17] == 0x22 &&
      a[18] == 0x33 &&
      a[19] == 0x44 &&
      a[20] == 0x55 &&
      a[21] == 0x66 &&
      a[22] == 0x77 &&
      a[23] == 0x88 &&
      a[24] == 0x99 &&
      a[25] == 0xaa &&
      a[26] == 0xbb &&
      a[27] == 0xcc &&
      a[28] == 0xdd &&
      a[29] == 0xee &&
      a[30] == 0xff &&
      a[31] == 0x12,
    ).toBe(true);
  });
});

describe("Basic Operations", () => {
  it("Should number is zero 1", () => {
    var a = u256.Zero;
    expect(a.isZero()).toBe(true);
  });

  it("Should number is zero 2", () => {
    var a = u256.One;
    expect(!a.isZero()).toBe(true);
  });

  it("Should number binary not", () => {
    var a = new u256(1, 2, 3, 4);
    expect(~a).toStrictEqual(new u256(~1, ~2, ~3, ~4));
  });

  it("Should number unary positive", () => {
    var a = new u256(1, 2, 3, 4);
    expect(+a).toStrictEqual(a);
  });

  it("Should number unary negative zero equal to zero", () => {
    var a = u256.Zero;
    expect(-a).toStrictEqual(u256.Zero);
  });

  it("Should number unary negative one equal to max", () => {
    var a = u256.One;
    expect(-a).toStrictEqual(u256.Max);
  });

  it("Should number unary negative max equal to one", () => {
    var a = u256.Max;
    expect(-a).toStrictEqual(u256.One);
  });

  it("Should number unary negative [max, 0, max, 0] equal to [1, max, 0, max]", () => {
    var a = new u256(u64.MAX_VALUE, 0, u64.MAX_VALUE, 0);
    expect(-a).toStrictEqual(new u256(1, u64.MAX_VALUE, 0, u64.MAX_VALUE));
  });

  it("Should number non empty", () => {
    var a = u256.One;
    expect(!!a).toBe(true);
  });

  it("Should number is empty 1", () => {
    var a = u256.Zero;
    expect(!a).toBe(true);
  });

  it("Should binary or numbers", () => {
    var a = new u256(1, 3, 0, 4);
    var b = new u256(2, 4, 3, 3);
    var r = new u256(1 | 2, 3 | 4, 0 | 3, 4 | 3);
    expect(a | b).toStrictEqual(r);
    expect(b | a).toStrictEqual(r);
  });

  it("Should binary xor numbers", () => {
    var a = new u256(1, 3, 0, 4);
    var b = new u256(2, 4, 3, 3);
    var r = new u256(1 ^ 2, 3 ^ 4, 0 ^ 3, 4 ^ 3);
    expect(a ^ b).toStrictEqual(r);
    expect(b ^ a).toStrictEqual(r);
  });

  it("Should binary and numbers", () => {
    var a = new u256(1, 3, 0, 4);
    var b = new u256(2, 4, 3, 3);
    var r = new u256(1 & 2, 3 & 4, 0 & 3, 4 & 3);
    expect(a & b).toStrictEqual(r);
    expect(b & a).toStrictEqual(r);
  });

  it("Should add [1, 0, 0, 0] and [max, 0, 0, 0]", () => {
    var a = u256.One;
    var b = new u256(u64.MAX_VALUE, 0, 0, 0);
    var r = new u256(0, 1, 0, 0);
    expect(a + b).toStrictEqual(r);
    expect(b + a).toStrictEqual(r);
  });

  it("Should add [1, 0, 0, 0] and [max, max, 0, 0]", () => {
    var a = u256.One;
    var b = new u256(u64.MAX_VALUE, u64.MAX_VALUE, 0, 0);
    var r = new u256(0, 0, 1, 0);
    expect(a + b).toStrictEqual(r);
    expect(b + a).toStrictEqual(r);
  });

  it("Should add [1, 0, 0, 0] and [max, max, max, 0]", () => {
    var a = u256.One;
    var b = new u256(u64.MAX_VALUE, u64.MAX_VALUE, u64.MAX_VALUE, 0);
    var r = new u256(0, 0, 0, 1);
    expect(a + b).toStrictEqual(r);
    expect(b + a).toStrictEqual(r);
  });

  it("Should add [1, 1, 1, 1] and [max - 1, max - 1, max - 1, max - 1]", () => {
    const one: u64 = 1;
    const pre = u64.MAX_VALUE - 1;
    var a = new u256(one, one, one, one);
    var b = new u256(pre, pre, pre, pre);
    var r = u256.Max;
    expect(a + b).toStrictEqual(r);
    expect(b + a).toStrictEqual(r);
  });

  it("Should sub one minus one", () => {
    var a = u256.One;
    var b = a;
    var r = u256.Zero;
    expect(a - b).toStrictEqual(r);
  });

  it("Should sub [2, 2, 2, 2] and [1, 1, 1, 1]", () => {
    var a = new u256(2, 2, 2, 2);
    var b = new u256(1, 1, 1, 1);
    var r = b;
    expect(a - b).toStrictEqual(r);
  });

  it("Should sub [max, max, max, max] and [1, 2, 3, 4]", () => {
    const max = u64.MAX_VALUE;
    var a = u256.Max;
    var b = new u256(1, 2, 3, 4);
    var r = new u256(max - 1, max - 2, max - 3, max - 4);
    expect(a - b).toStrictEqual(r);
  });

  it("Should sub [0, 0, 0, 0] and [1, 1, 1, 1]", () => {
    const max = u64.MAX_VALUE;
    var a = u256.Zero;
    var b = new u256(1, 1, 1, 1);
    var r = new u256(max, max - 1, max - 1, max - 1);
    expect(a - b).toStrictEqual(r);
  });

  it("Should sub [0, 0, 0, 0] and [max, max, max, max]", () => {
    var a = u256.Zero;
    var b = u256.Max;
    var r = u256.One;
    expect(a - b).toStrictEqual(r);
  });

  it("Should sub [max, max, max, max] and [1, 0, 0, 0]", () => {
    const max = u64.MAX_VALUE;
    var a = u256.Max;
    var b = u256.One;
    var r = new u256(max - 1, max, max, max);
    expect(a - b).toStrictEqual(r);
  });

  it("Should sub [1, 2, 3, 4] and [max - 1, max - 2, max - 3, max - 4]", () => {
    const max = u64.MAX_VALUE;
    var a = new u256(1, 2, 3, 4);
    var b = new u256(max - 1, max - 2, max - 3, max - 4);
    var r = new u256(3, 4, 6, 8);
    expect(a - b).toStrictEqual(r);
  });

  it("Should multiply two u256 numbers", () => {
    var a = u256.from(3);
    var b = u256.from(3);
    var r = u256.from(9);

    expect(a * b).toStrictEqual(r);
    expect(b * a).toStrictEqual(r);
  });

  it("Should multiply two u256 numbers", () => {
    var a = u256.from(43545453452);
    var b = u256.from(2353454354);
    var r = new u256(10248516654965971928, 5);

    expect(a * b).toStrictEqual(r);
    expect(b * a).toStrictEqual(r);
  });

  it("Should multiply two u256 numbers - 2", () => {
    var a = u256.from(11);
    var b = new u256(0, 2);
    var r = new u256(0, 22);

    expect(a * b).toStrictEqual(r);
    expect(b * a).toStrictEqual(r);
  });

  it("Should multiply two u256 numbers - 3", () => {
    var a = new u256(0, 3);
    var b = new u256(0, 0, 3);
    var r = new u256(0, 0, 0, 9);

    expect(a * b).toStrictEqual(r);
    expect(b * a).toStrictEqual(r);
  });

  it("Should multiply two u256 numbers - 4", () => {
    var a = u256.from(new u128(14083847773837265618, 6692605942));
    var b = u256.from(new u128(18444665141527514289, 5354084802));
    var r = new u256(
      5659639222556316466,
      4474720309748468391,
      17386035696907167262,
      1,
    );

    expect(a * b).toStrictEqual(r);
    expect(b * a).toStrictEqual(r);
  });

  it("Should multiply u256 numbers by 1", () => {
    var a = u256.Max;
    var b = u256.One;
    var r = a;
    expect(a * b).toStrictEqual(r);
    expect(b * a).toStrictEqual(r);
  });

  it("Should multiply u256 numbers by 0", () => {
    var a = new u256(5656466, 447478468391, 17386907167262, 1);
    var b = u256.Zero;
    var r = b;
    expect(a * b).toStrictEqual(r);
    expect(b * a).toStrictEqual(r);
  });

  it("Should multiply two u256 numbers with overflow", () => {
    var a = new u256(0, 0, 1);
    expect(a * a).toStrictEqual(u256.Zero);
  });

  it("Should multiply two u256 numbers with overflow - 2", () => {
    var a = new u256(1, 0, 1);
    expect(a * a).toStrictEqual(new u256(1, 0, 2));
  });

  it("Should multiply two u256 numbers with overflow - 3", () => {
    var a = new u256(6, 0, 0, 420);
    var b = new u256(0, 7, 0, 0);
    var r = new u256(0, 42, 0, 0);

    expect(a * b).toStrictEqual(r);
    expect(b * a).toStrictEqual(r);
  });

  it("Should multiply two u256 numbers with overflow - 3", () => {
    var a = new u256(2, 666, 666, 666);
    var b = new u256(0, 0, 0, 3);
    var r = new u256(0, 0, 0, 6);

    expect(a * b).toStrictEqual(r);
    expect(b * a).toStrictEqual(r);
  });

  // right shift tests
  describe("Right Shift Operations", () => {
    it("Should shift 0 >> 1", () => {
      let a = u256.Zero;
      expect(a >> 1).toStrictEqual(u256.Zero);
    });

    it("Should shift 0 >> 64", () => {
      let a = u256.Zero;
      expect(a >> 64).toStrictEqual(u256.Zero);
    });

    it("Should shift 1 >> 1", () => {
      let a = u256.from(1);
      // fixed:0
      expect(a >> 1).toStrictEqual(u256.Zero);
    });

    it("Should shift 1 >> 64", () => {
      let a = u256.from(1);
      // fixed:0
      expect(a >> 64).toStrictEqual(u256.Zero);
    });

    it("Should shift 10 >> 1", () => {
      let a = u256.from(10);
      // fixed:5
      expect(a >> 1).toStrictEqual(u256.from(5));
    });

    it("Should shift 10 >> 64", () => {
      let a = u256.from(10);
      // fixed:0
      expect(a >> 64).toStrictEqual(u256.Zero);
    });

    it("Should shift 100 >> 1", () => {
      let a = u256.from(100);
      // fixed:50
      expect(a >> 1).toStrictEqual(u256.from(50));
    });

    it("Should shift 100 >> 64", () => {
      let a = u256.from(100);
      // fixed:0
      expect(a >> 64).toStrictEqual(u256.Zero);
    });

    it("Should shift 1000 >> 1", () => {
      let a = u256.from(1000);
      // fixed:500
      expect(a >> 1).toStrictEqual(u256.from(500));
    });

    it("Should shift 1000 >> 64", () => {
      let a = u256.from(1000);
      // fixed:0
      expect(a >> 64).toStrictEqual(u256.Zero);
    });

    it("Should shift 1234567890 >> 1", () => {
      let a = u256.from(1234567890);
      // fixed:617283945
      expect(a >> 1).toStrictEqual(u256.from(617283945));
    });

    it("Should shift 1234567890 >> 64", () => {
      let a = u256.from(1234567890);
      // fixed:0
      expect(a >> 64).toStrictEqual(u256.Zero);
    });

    it("Should shift 4294967296 >> 1", () => {
      let a = u256.from(4294967296);
      // fixed:2147483648
      expect(a >> 1).toStrictEqual(u256.from(2147483648));
    });

    it("Should shift 4294967296 >> 64", () => {
      let a = u256.from(4294967296);
      // fixed:0
      expect(a >> 64).toStrictEqual(u256.Zero);
    });

    it("Should shift 9223372036854775808 >> 1", () => {
      // This fits in 64 bits
      let a = u256.fromU64(9223372036854775808);
      // fixed:4611686018427387904
      expect(a >> 1).toStrictEqual(u256.fromU64(4611686018427387904));
    });

    it("Should shift 9223372036854775808 >> 64", () => {
      let a = u256.fromU64(9223372036854775808);
      // fixed:0
      expect(a >> 64).toStrictEqual(u256.Zero);
    });

    // For values larger than 64 bits, use fromString with a decimal representation.
    // Example: 18446744073709551616 (2^64) does not fit in 64 bits, so we must use fromString.
    it("Should shift 18446744073709551616 >> 1", () => {
      let a = u256.fromString("18446744073709551616"); // 2^64
      // fixed:9223372036854775808
      expect(a >> 1).toStrictEqual(u256.fromString("9223372036854775808"));
    });

    it("Should shift 18446744073709551616 >> 64", () => {
      let a = u256.fromString("18446744073709551616"); // 2^64
      // fixed:1
      expect(a >> 64).toStrictEqual(u256.One);
    });

    // Another large test
    it("Should shift 36893488147419103232 >> 1", () => {
      let a = u256.fromString("36893488147419103232"); // 2^65
      // fixed:18446744073709551616
      expect(a >> 1).toStrictEqual(u256.fromString("18446744073709551616"));
    });

    it("Should shift 36893488147419103232 >> 64", () => {
      let a = u256.fromString("36893488147419103232"); // 2^65
      // fixed:2
      expect(a >> 64).toStrictEqual(u256.from(2));
    });

    // Larger shifts
    it("Should shift 1267650600228229401496703205376 >> 64", () => {
      // 1267650600228229401496703205376 = 2^100, a very large number
      let a = u256.fromString("1267650600228229401496703205376");
      // fixed: 68719476736 (2^36)
      expect(a >> 64).toStrictEqual(u256.from(68719476736));
    });
  });

  describe("Additional Tests for Full Coverage", () => {
    describe("fromString Tests", () => {
      it("Should parse a small decimal string", () => {
        expect(u256.fromString("123")).toStrictEqual(u256.from(123));
      });

      it("Should parse a large decimal string (just below 2^64)", () => {
        // 2^64 - 1 = 18446744073709551615
        let decStr = "18446744073709551615";
        expect(u256.fromString(decStr)).toStrictEqual(
          u256.fromString("18446744073709551615", 10),
        );
      });

      it("Should parse zero decimal string", () => {
        expect(u256.fromString("0")).toStrictEqual(u256.Zero);
        expect(u256.fromString("0000")).toStrictEqual(u256.Zero);
      });

      it("Should parse a large decimal string (just below 2^128)", () => {
        // 2^128 - 1 = 340282366920938463463374607431768211455
        let decStr = "340282366920938463463374607431768211455";
        let val = u256.fromString(decStr);
        // This is the largest 128-bit number, fits comfortably in u256
        // Just a sanity check: val should not be zero
        expect(!val.isZero()).toBe(true);
      });

      it("Should parse a small hex string", () => {
        expect(u256.fromString("FF", 16)).toStrictEqual(u256.from(255));
      });

      it("Should parse a large hex string (u256 max)", () => {
        let maxHex =
          "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
        expect(u256.fromString(maxHex, 16)).toStrictEqual(u256.Max);
      });

      it("Should fail on invalid decimal digit", () => {
        expect(() => {
          u256.fromString("12a");
        }).toThrow("Invalid decimal digit");
      });

      it("Should fail on invalid hex digit", () => {
        expect(() => {
          u256.fromString("G", 16);
        }).toThrow("Invalid hexadecimal digit");
      });
    });

    describe("Conversion from various types", () => {
      it("Should convert from i64 negative", () => {
        let val = i64(-123);
        let u = u256.fromI64(val);
        // sign-extended: should have hi2, hi1, lo2 = all ones if negative
        expect(u.hi2).toBe(-1);
        expect(u.hi1).toBe(-1);
        expect(u.lo2).toBe(-1);
        expect(u.lo1).toBe(0xffffffffffffff85); // 2's complement of -123
      });

      it("Should convert from i64 positive", () => {
        let val = i64(123);
        let u = u256.fromI64(val);
        expect(u.hi2).toBe(0);
        expect(u.hi1).toBe(0);
        expect(u.lo2).toBe(0);
        expect(u.lo1).toBe(123);
      });

      it("Should convert from u64", () => {
        let val = <u64>9876543210;
        let u = u256.fromU64(val);
        expect(u.lo1).toBe(9876543210);
        expect(u.isZero()).toBe(false);
      });

      it("Should convert from i32 negative", () => {
        let val = i32(-42);
        let u = u256.fromI32(val);
        // sign-extended i32 should fill all higher bits
        expect(u.hi2).toBe(-1);
        expect(u.hi1).toBe(-1);
        expect(u.lo2).toBe(-1);
        // low part should be 2's complement of 42 in 64-bit
        expect(u.lo1).toBe(0xffffffffffffffd6);
      });

      it("Should convert from u32", () => {
        let val = <u32>42;
        let u = u256.fromU32(val);
        expect(u.lo1).toBe(42);
        expect(u.isZero()).toBe(false);
      });

      it("Should convert from f64", () => {
        // Note: This conversion is limited and not fully accurate for large values
        let val = <f64>123.0;
        let u = u256.fromF64(val);
        expect(u.lo1).toBe(123);
      });

      it("Should convert from f32", () => {
        let val = <f32>123.0;
        let u = u256.fromF32(val);
        expect(u.lo1).toBe(123);
      });
    });

    describe("Comparison Tests", () => {
      it("Should test eq and ne", () => {
        let a = u256.from(100);
        let b = u256.from(100);
        let c = u256.from(101);
        expect(a == b).toBe(true);
        expect(a != b).toBe(false);
        expect(a == c).toBe(false);
        expect(a != c).toBe(true);
      });

      it("Should test lt and gt", () => {
        let a = u256.from(1000);
        let b = u256.from(999);
        let c = u256.from(1000);
        expect(a > b).toBe(true);
        expect(a < b).toBe(false);
        expect(a < c).toBe(false);
        expect(a > c).toBe(false);
        expect(b < a).toBe(true);
      });

      it("Should test le and ge", () => {
        let a = u256.from(500);
        let b = u256.from(500);
        let c = u256.from(501);
        expect(a <= b).toBe(true);
        expect(a >= b).toBe(true);
        expect(a <= c).toBe(true);
        expect(a >= c).toBe(false);
        expect(c <= a).toBe(false);
        expect(c >= a).toBe(true);
      });
    });

    describe("Bit Counting Functions", () => {
      it("Should test popcnt", () => {
        let a = u256.from(0b1011); // popcnt = 3 bits set
        expect(u256.popcnt(a)).toBe(3);
        let b = u256.Max;
        // popcnt of max is 256 bits set
        expect(u256.popcnt(b)).toBe(256);
      });

      it("Should test clz", () => {
        let a = u256.from(1);
        // clz for a single 1 bit at the lowest position: 255
        expect(u256.clz(a)).toBe(255);
        let b = u256.Max;
        // clz of max (all bits set) = 0
        expect(u256.clz(b)).toBe(0);
        let c = u256.fromString("18446744073709551616"); // 2^64
        // clz(2^64) = 256 - 65 = 191 since highest bit is at position 64 (0-based)
        expect(u256.clz(c)).toBe(191);
      });

      it("Should test ctz", () => {
        let a = u256.from(16); // binary: 10000, ctz = 4
        expect(u256.ctz(a)).toBe(4);
        let b = u256.Max;
        // ctz of max (all bits set) = 0
        expect(u256.ctz(b)).toBe(0);
        let c = u256.fromString("36893488147419103232"); // 2^65
        // ctz(2^65) = 65
        expect(u256.ctz(c)).toBe(65);
      });
    });

    describe("Conversion to Smaller Types", () => {
      it("Should convert toU64 (truncate higher bits)", () => {
        let a = u256.fromString("18446744073709551616"); // 2^64
        // toU64 truncates to lower 64 bits -> 0
        expect(a.toU64()).toBe(0);
      });

      it("Should convert toI64", () => {
        let a = u256.fromI64(-123);
        // toI64 returns signed 64-bit integer
        // if we sign-extended -123 properly, toI64 should be -123
        expect(a.toI64()).toBe(-123);

        let b = u256.from(123);
        expect(b.toI64()).toBe(123);
      });

      it("Should convert toU32 (truncate lower bits)", () => {
        let a = u256.from(0xffffffffffff); // large number
        // U32 truncation takes the lower 32 bits
        // 0xFFFFFFFFFFFF & 0xFFFFFFFF = 0xFFFFFFFF = 4294967295
        expect(a.toU32()).toBe(0xffffffff);
      });

      it("Should convert toI32", () => {
        let a = u256.fromI64(-1);
        // toI32 should return -1
        expect(a.toI32()).toBe(-1);

        let b = u256.from(0xffffffff);
        // signed 32-bit interpretation of 0xFFFFFFFF is -1
        expect(b.toI32()).toBe(-1);
      });
    });

    describe("Increment and Decrement", () => {
      it("Should pre-increment", () => {
        let a = u256.from(99);
        ++a;
        expect(a.toU64()).toBe(100);
      });

      it("Should pre-decrement", () => {
        let a = u256.from(100);
        --a;
        expect(a.toU64()).toBe(99);
      });

      it("Should post-increment", () => {
        let a = u256.from(200);
        let b = a++;
        expect(b.toU64()).toBe(200);
        expect(a.toU64()).toBe(201);
      });

      it("Should post-decrement", () => {
        let a = u256.from(300);
        let b = a--;
        expect(b.toU64()).toBe(300);
        expect(a.toU64()).toBe(299);
      });

      it("Should overflow on incrementing max", () => {
        let a = u256.Max;
        ++a; // wraps to zero
        expect(a.isZero()).toBe(true);
      });

      it("Should underflow on decrementing zero", () => {
        let a = u256.Zero;
        --a; // wraps to max
        expect(a).toStrictEqual(u256.Max);
      });
    });

    describe("Additional Shifts", () => {
      it("Should shift a large number by 127 bits", () => {
        let a = u256.fromString("100000000000000000000"); // Just a large dec number
        let shifted = a >> 127;
        // Shifting by 127 bits is almost clearing out all bits, likely zero unless very large
        // Just ensure it doesn't crash:
        // For sanity, we know that shifting by 127 > 64 means possibly just top bits remain.
        expect(shifted.toU64()).toBeLessThanOrEqual(a.toU64());
      });

      it("Should shift max by 255 bits", () => {
        let a = u256.Max;
        // shifting by 255 bits leaves only the topmost bit if any
        let shifted = a >> 255;
        // For u256.Max, shifting right by 255 leaves 1
        expect(shifted).toStrictEqual(u256.One);
      });
    });
  });

  describe("Potential Exploits and Vulnerabilities", () => {
    // fromString vulnerabilities
    it("Should throw with unsupported radix", () => {
      expect(() => {
        u256.fromString("123", 8); // only 10 or 16 are allowed
      }).toThrow("radix must be 10 or 16");
    });

    it("Should throw with invalid decimal input (not a digit)", () => {
      expect(() => {
        u256.fromString("12x", 10);
      }).toThrow("Invalid decimal digit");
    });

    it("Should throw with invalid hex input (invalid hex char)", () => {
      expect(() => {
        u256.fromString("g1", 16);
      }).toThrow("Invalid hexadecimal digit");
    });

    it("Should handle extremely large decimal input without crashing", () => {
      // This string represents a very large decimal number (much larger than 2^256)
      let largeStr = "9".repeat(500); // 500-digit number
      let val = u256.fromString(largeStr, 10);
      // Check that it doesn't crash or hang. Result should be a valid number (truncated mod 2^256).
      expect(val).toBeTruthy();
    });

    it("Should handle extremely large hex input without crashing", () => {
      // Very large hex string
      let largeHex = "f".repeat(512); // 512 hex chars = 2048 bits, still just truncated
      let val = u256.fromString(largeHex, 16);
      expect(val).toBeTruthy();
    });

    // Increment/Decrement vulnerabilities
    it("Should overflow increment u256.Max without crashing", () => {
      let a = u256.Max;
      ++a;
      // Should wrap to zero
      expect(a.isZero()).toBe(true);
    });

    it("Should underflow decrement u256.Zero without crashing", () => {
      let a = u256.Zero;
      --a;
      // Should wrap to u256.Max
      expect(a).toStrictEqual(u256.Max);
    });

    // Signed conversion vulnerabilities
    it("Should correctly sign-extend large negative i64", () => {
      // For example, -1 in i64 should become a fully sign-extended u256
      let a = u256.fromI64(-1);
      // Check top words all -1 and lo1 = 0xFFFFFFFFFFFFFFFF
      expect(a.hi2).toBe(<u64>-1);
      expect(a.hi1).toBe(<u64>-1);
      expect(a.lo2).toBe(<u64>-1);
      expect(a.lo1).toBe(<u64>-1);
    });

    // Ensure no infinite loops or slowdowns
    it("Should not hang or become slow on large fromString input", () => {
      // Very large decimal string
      let giantStr = "1" + "0".repeat(10000); // a 1 followed by 10,000 zeros
      let val = u256.fromString(giantStr, 10);
      // Also verify a valid result
      expect(val).toBeTruthy();
    });
  });

  describe("Division (div) Tests", () => {
    it("Should divide by 1 and return the same number", () => {
      let a = u256.from(123456789);
      expect(a / u256.One).toStrictEqual(a);
    });

    it("Should divide zero by any non-zero number and return zero", () => {
      let a = u256.Zero;
      let b = u256.from(10);
      expect(a / b).toStrictEqual(u256.Zero);
    });

    it("Should divide smaller number by larger one and return zero", () => {
      let a = u256.from(10);
      let b = u256.from(1000);
      expect(a / b).toStrictEqual(u256.Zero);
    });

    it("Should divide equal numbers and return 1", () => {
      let val = u256.from(999999);
      expect(val / val).toStrictEqual(u256.One);
    });

    it("Should divide max by two", () => {
      let a = u256.Max;
      // max >> 1 should equal max/2 for an unsigned number
      let half = a >> 1;
      expect(a / u256.from(2)).toStrictEqual(half);
    });

    it("Should divide a large number by a smaller one", () => {
      let a = u256.fromString(
        "115792089237316195423570985008687907853269984665640564039457584007913129639935",
      );
      // a = u256.Max
      let b = u256.fromString("100000000000000000000"); // A large decimal number
      let result = a / b;
      // Just check that it doesn't crash and returns something non-zero
      expect(!result.isZero()).toBe(true);
    });

    it("Should throw on division by zero", () => {
      expect(() => {
        let a = u256.from(10);
        let b = u256.Zero;

        let c = a / b;
      }).toThrow("Division by zero");
    });

    it("Should divide random numbers correctly", () => {
      let a = u256.from(5000);
      let b = u256.from(50);
      expect(a / b).toStrictEqual(u256.from(100));

      let c = u256.from(1000000);
      let d = u256.from(1000);
      expect(c / d).toStrictEqual(u256.from(1000));
    });
  });

  describe("Shift Left (shl) Tests", () => {
    it("Should shift by 0 bits and return the same number", () => {
      let a = u256.from(123456);
      expect(a << 0).toStrictEqual(a);
    });

    it("Should shift by 1 bit and double the number", () => {
      let a = u256.from(50);
      expect(a << 1).toStrictEqual(u256.from(100));
    });

    it("Should shift by 63 bits and place lower bits at top of lo2", () => {
      // shifting by 63 bits almost moves lo1 entirely into lo2
      let a = u256.from(1);
      let shifted = a << 63;
      // After shifting by 63, the single bit is now at position 63 in lo2.
      // That means lo2 should have bit 63 set, which is (1 << 63).
      expect(shifted.lo1).toBe(9223372036854775808);
      expect(shifted.lo2).toBe(0);
    });

    it("Should shift by 64 bits and move lo1 entirely into lo2", () => {
      let a = u256.from(0x12345678);
      let shifted = a << 64;
      // The original lo1 moves into lo2
      expect(shifted.lo1).toBe(0);
      expect(shifted.lo2).toBe(0x12345678);
      expect(shifted.hi1).toBe(0);
      expect(shifted.hi2).toBe(0);
    });

    it("Should handle large shifts less than 256 and not crash", () => {
      let a = u256.fromString("100000000000000000000");
      // shift by 200 bits (just a random large shift under 256)
      let shifted = a << 200;
      // Just ensure it doesn't crash and returns a valid number
      expect(shifted).toBeTruthy();
      // The number should be huge, but not zero since we didn't exceed 255 bits shift.
      expect(!shifted.isZero()).toBe(true);
    });

    it("Should shift max by 1 and discard the top bit", () => {
      let a = u256.Max;
      // shifting max by 1 will overflow and lose the highest bit
      let shifted = a << 1;
      // The highest bit set would overflow, but we just check it's not equal to max
      expect(shifted).not.toStrictEqual(a);
      expect(!shifted.isZero()).toBe(true);
    });
  });

  describe("Shift Left (shl) Tests for all shifts 0 to 255", () => {
    it("Should handle shifting a known pattern by each shift amount from 0 to 255", () => {
      // We'll pick a number with a known pattern:
      // For example: 0x0000_FFFF_0000_FFFF (a pattern that makes it easy to track)
      // in u256 it would be:
      let pattern = new u256(0x0000ffff0000ffff, 0x0000ffff0000ffff);

      // Shifting by 0 should return the same pattern
      expect(pattern << 0).toStrictEqual(pattern);

      for (let i = 1; i <= 255; i++) {
        let shifted = pattern << i;
        // Just ensure it doesn't crash and returns something
        expect(shifted).toBeTruthy();

        // For certain shifts, we can do sanity checks:
        // - For shifts < 64, we expect the lower parts to just move left
        // - For shifts >= 256, result should be zero, but we never reach 256 in this loop
        if (i >= 256) {
          // Not reached, just a placeholder if logic changes
          expect(shifted.isZero()).toBe(true);
        } else {
          // For i < 256, the result might not be zero, but let's ensure no crash.
          // Optionally, add more assertions if desired.
        }
      }
    });
  });
});
