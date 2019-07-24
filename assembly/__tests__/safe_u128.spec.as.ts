import { u128 } from '../../assembly/integer/safe/u128';

describe("Basic operations", () => {
  it("Should add two numbers 1", () => {
    var a = new u128(100, 255);
    var b = new u128(255, 100);
    expect<u128>(a + b).toStrictEqual(new u128(355, 355));
  });

  it("Should add two numbers 2", () => {
    var a = u128.Max;
    var b = u128.Zero;
    expect<u128>(a + b).toStrictEqual(u128.Max);
  });

  it("Should add two numbers 3", () => {
    var a = u128.from(-2);
    var b = u128.One;
    expect<u128>(a + b).toStrictEqual(u128.Max);
  });

  it("Should subtract two numbers 1", () => {
    var a = new u128(355, 355);
    var b = new u128(100, 255);
    expect<u128>(a - b).toStrictEqual(new u128(255, 100));
  });

  it("Should subtract two numbers 2", () => {
    var a = u128.Max;
    var b = u128.Max;
    expect<u128>(a - b).toStrictEqual(u128.Zero);
  });

  it("Should subtract two numbers 3", () => {
    var a = u128.Max;
    var b = u128.Zero;
    expect<u128>(a - b).toStrictEqual(u128.Max);
  });

  it("Should multiply two numbers 1", () => {
    var a = u128.from(43545453452);
    var b = u128.Zero;
    expect<u128>(a * b).toStrictEqual(u128.Zero);
  });

  it("Should multiply two numbers 2", () => {
    var a = u128.from(43545453452);
    var b = u128.One;
    expect<u128>(a * b).toStrictEqual(a);
  });

  it("Should multiply two numbers 3", () => {
    var a = u128.Max;
    var b = u128.One;
    expect<u128>(a * b).toStrictEqual(a);
  });

  it("Should multiply two numbers 4", () => {
    var a = u128.from(43545453452);
    var b = u128.from(2353454354);
    expect<u128>(a * b).toStrictEqual(new u128(10248516654965971928, 5));
  });

  it("Should power number 1", () => {
    expect<u128>(u128.Zero ** 1024).toStrictEqual(u128.Zero);
  });

  it("Should power number 2", () => {
    expect<u128>(u128.One ** 0).toStrictEqual(u128.One);
  });

  it("Should power number 3", () => {
    expect<u128>(u128.One ** 1024).toStrictEqual(u128.One);
  });

  it("Should power number 4", () => {
    expect<u128>(new u128(2) ** 127).toStrictEqual(new u128(0, 0x8000000000000000));
  });

  it("Should power number 5", () => {
    expect<u128>(new u128(3) ** 80).toStrictEqual(new u128(0x3CEA59789C79D441, 0x6F32F1EF8B18A2BC));
  });

  it("Should power number 6", () => {
    expect<u128>(new u128(4) ** 63).toStrictEqual(new u128(0, 0x4000000000000000));
  });

  it("Should power number 7", () => {
    expect<u128>(new u128(5) ** 55).toStrictEqual(new u128(0xFFF4B4E3F741CF6D, 0xD0CF4B50CFE20765));
  });

  it("Should power number 8", () => {
    expect<u128>(new u128(6) ** 49).toStrictEqual(new u128(0x4286000000000000, 0x6558E2A0921FE069));
  });

  it("Should power number 9", () => {
    expect<u128>(new u128(0, 1) ** 1).toStrictEqual(new u128(0, 1));
  });

  it("Should power number 10", () => {
    expect<u128>(new u128(u64.MAX_VALUE) ** 2).toStrictEqual(new u128(1, 0x0FFFFFFFFFFFFFFFE));
  });
})

describe("Overflow Underflow Throwable", () => {
  it("Should throw when add two numbers 1", () => {
    expectFn(() => {
      var a = u128.One;
      var b = u128.Max;
      !(a + b);
    }).toThrow();
  });

  it("Should throw when add two numbers 2", () => {
    expectFn(() => {
      var a = u128.Max;
      var b = u128.One;
      !(a + b);
    }).toThrow();
  });

  it("Should throw when add two numbers 3", () => {
    expectFn(() => {
      var a = u128.from(-2);
      var b = new u128(2);
      !(a + b);
    }).toThrow();
  });

  it("Should throw when subtract two numbers 1", () => {
    expectFn(() => {
      var a = u128.Zero;
      var b = u128.Max;
      !(a - b);
    }).toThrow();
  });

  it("Should throw when subtract two numbers 2", () => {
    expectFn(() => {
      var a = u128.from(-2);
      var b = u128.Max;
      !(a - b);
    }).toThrow();
  });

  it("Should throw when subtract two numbers 3", () => {
    expectFn(() => {
      var a = u128.Zero;
      var b = u128.One;
      !(a - b);
    }).toThrow();
  });

  it("Should throw multiply two numbers with overflow 1", () => {
    expectFn(() => {
      var a = new u128(0, 1);
      !(a * a);
    }).toThrow();
  });

  it("Should throw multiply two numbers with overflow 2", () => {
    expectFn(() => {
      var a = new u128(1, 1);
      !(a * a);
    }).toThrow();
  });

  it("Should throw multiply two numbers with overflow 3", () => {
    expectFn(() => {
      var a = u128.Max;
      var b = u128.from(2);
      !(a * b);
    }).toThrow();
  });

  it("Should throw multiply two numbers with overflow 4", () => {
    expectFn(() => {
      var a = u128.Max;
      var b = u128.Max;
      !(a * b);
    }).toThrow();
  });

  it("Should throw power with overflow 1", () => {
    expectFn(() => {
      !(new u128(2) ** 128);
    }).toThrow();
  });

  it("Should throw power with overflow 2", () => {
    expectFn(() => {
      !(new u128(3) ** 81);
    }).toThrow();
  });

  it("Should throw power with overflow 3", () => {
    expectFn(() => {
      !(new u128(3) ** 120);
    }).toThrow();
  });

  it("Should throw power with overflow 4", () => {
    expectFn(() => {
      !(new u128(4) ** 64);
    }).toThrow();
  });

  it("Should throw power with overflow 5", () => {
    expectFn(() => {
      !(new u128(4) ** 120);
    }).toThrow();
  });

  it("Should throw power with overflow 6", () => {
    expectFn(() => {
      !(new u128(5) ** 56);
    }).toThrow();
  });

  it("Should throw power with overflow 7", () => {
    expectFn(() => {
      !(new u128(5) ** 60);
    }).toThrow();
  });

  it("Should throw power with overflow 8", () => {
    expectFn(() => {
      !(new u128(6) ** 50);
    }).toThrow();
  });

  it("Should throw power with overflow 9", () => {
    expectFn(() => {
      !(new u128(7) ** 49);
    }).toThrow();
  });

  it("Should throw power with overflow 10", () => {
    expectFn(() => {
      !(new u128(8) ** 43);
    }).toThrow();
  });

  it("Should throw power with overflow 11", () => {
    expectFn(() => {
      !(new u128(9) ** 41);
    }).toThrow();
  });

  it("Should throw power with overflow 12", () => {
    expectFn(() => {
      !(new u128(10) ** 39);
    }).toThrow();
  });

  it("Should throw power with overflow 13", () => {
    expectFn(() => {
      !(new u128(11) ** 38);
    }).toThrow();
  });

  it("Should throw power with overflow 14", () => {
    expectFn(() => {
      !(new u128(12) ** 36);
    }).toThrow();
  });

  it("Should throw power with overflow 15", () => {
    expectFn(() => {
      !(new u128(0, 1) ** 2);
    }).toThrow();
  });

  it("Should throw power with overflow 16", () => {
    expectFn(() => {
      !(new u128(u64.MAX_VALUE) ** 3);
    }).toThrow();
  });
})

describe("Buffer Conversion", () => {
  it("Should convert from bytes Little Endian", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    expect<u128>(u128.fromBytes(arr)).toStrictEqual(new u128(0x8877665544332211, 0x12ffeeddccbbaa99));
  });

  it("Should convert from bytes Big Endian", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    expect<u128>(u128.fromBytes(arr, true)).toStrictEqual(new u128(0x99aabbccddeeff12, 0x1122334455667788));
  });
});
