import { u128 } from '../../assembly/integer/safe/u128';

describe("Basic operations", () => {
  it("should Add Two Numbers 1", (): void => {
    var a = new u128(100, 255);
    var b = new u128(255, 100);
    expect<u128>(a + b).toStrictEqual(new u128(355, 355));
  });

  it("should Add Two Numbers 2", (): void => {
    var a = u128.Max;
    var b = u128.Zero;
    expect<u128>(a + b).toStrictEqual(u128.Max);
  });

  it("should Add Two Numbers 3", (): void => {
    var a = u128.from(-2);
    var b = u128.One;
    expect<u128>(a + b).toStrictEqual(u128.Max);
  });

  it("should Subtract Two Numbers 1", (): void => {
    var a = new u128(355, 355);
    var b = new u128(100, 255);
    expect<u128>(a - b).toStrictEqual(new u128(255, 100));
  });

  it("should Subtract Two Numbers 2", (): void => {
    var a = u128.Max;
    var b = u128.Max;
    expect<u128>(a - b).toStrictEqual(u128.Zero);
  });

  it("should Subtract Two Numbers 3", (): void => {
    var a = u128.Max;
    var b = u128.Zero;
    expect<u128>(a - b).toStrictEqual(u128.Max);
  });

  it("should Multiply Two Numbers 1", (): void => {
    var a = u128.from(43545453452);
    var b = u128.Zero;
    expect<u128>(a * b).toStrictEqual(u128.Zero);
  });

  it("should Multiply Two Numbers 2", (): void => {
    var a = u128.from(43545453452);
    var b = u128.One;
    expect<u128>(a * b).toStrictEqual(a);
  });

  it("should Multiply Two Numbers 3", (): void => {
    var a = u128.Max;
    var b = u128.One;
    expect<u128>(a * b).toStrictEqual(a);
  });

  it("should Multiply Two Numbers 4", (): void => {
    var a = u128.from(43545453452);
    var b = u128.from(2353454354);
    expect<u128>(a * b).toStrictEqual(new u128(10248516654965971928, 5));
  });

  it("should Power Number 1", (): void => {
    expect<u128>(u128.Zero ** 1024).toStrictEqual(u128.Zero);
  });

  it("should Power Number 2", (): void => {
    expect<u128>(u128.One ** 0).toStrictEqual(u128.One);
  });

  it("should Power Number 3", (): void => {
    expect<u128>(u128.One ** 1024).toStrictEqual(u128.One);
  });

  it("should Power Number 4", (): void => {
    expect<u128>(new u128(2) ** 127).toStrictEqual(new u128(0, 0x8000000000000000));
  });

  it("should Power Number 5", (): void => {
    expect<u128>(new u128(3) ** 80).toStrictEqual(new u128(0x3CEA59789C79D441, 0x6F32F1EF8B18A2BC));
  });

  it("should Power Number 6", (): void => {
    expect<u128>(new u128(4) ** 63).toStrictEqual(new u128(0, 0x4000000000000000));
  });

  it("should Power Number 7", (): void => {
    expect<u128>(new u128(5) ** 55).toStrictEqual(new u128(0xFFF4B4E3F741CF6D, 0xD0CF4B50CFE20765));
  });

  it("should Power Number 8", (): void => {
    expect<u128>(new u128(6) ** 49).toStrictEqual(new u128(0x4286000000000000, 0x6558E2A0921FE069));
  });

  it("should Power Number 9", (): void => {
    expect<u128>(new u128(0, 1) ** 1).toStrictEqual(new u128(0, 1));
  });

  it("should Power Number 10", (): void => {
    expect<u128>(new u128(u64.MAX_VALUE) ** 2).toStrictEqual(new u128(1, 0x0FFFFFFFFFFFFFFFE));
  });
})

describe("Overflow Underflow Throwable", () => {
  it("should Throw When Add Two Numbers 1", (): void => {
    expectFn(()=>{
      var a = u128.One;
      var b = u128.Max;
      !(a + b);
    }).toThrow();
  });

  it("should Throw When Add Two Numbers 2", (): void => {
    expectFn(()=>{
      var a = u128.Max;
      var b = u128.One;
      !(a + b);
    }).toThrow();
  });

  it("should Throw When Add Two Numbers 3", (): void => {
    expectFn(()=>{
      var a = u128.from(-2);
      var b = new u128(2);
      !(a + b);
    }).toThrow();
  });

  it("should Throw When Subtract Two Numbers 1", (): void => {
    expectFn(()=>{
      var a = u128.Zero;
      var b = u128.Max;
      !(a - b);
    }).toThrow();
  });

  it("should Throw When Subtract Two Numbers 2", (): void => {
    expectFn(()=>{
      var a = u128.from(-2);
      var b = u128.Max;
      !(a - b);
    }).toThrow();
  });

  it("should Throw When Subtract Two Numbers 3", (): void => {
    expectFn(()=>{
      var a = u128.Zero;
      var b = u128.One;
      !(a - b);
    }).toThrow();
  });

  it("should Throw Multiply Two Numbers With Overflow 1", (): void => {
    expectFn(()=>{
      var a = new u128(0, 1);
      !(a * a);
    }).toThrow();
  });

  it("should Throw Multiply Two Numbers With Overflow 2", (): void => {
    expectFn(()=>{
      var a = new u128(1, 1);
      !(a * a);
    }).toThrow();
  });

  it("should Throw Multiply Two Numbers With Overflow 3", (): void => {
    expectFn(()=>{
      var a = u128.Max;
      var b = u128.from(2);
      !(a * b);
    }).toThrow();
  });

  it("should Throw Multiply Two Numbers With Overflow 4", (): void => {
    expectFn(()=>{
      var a = u128.Max;
      var b = u128.Max;
      !(a * b);
    }).toThrow();
  });

  it("should Throw Power With Overflow 1", (): void => {
    expectFn(()=>{
      !(new u128(2) ** 128);
    }).toThrow();
  });

  it("should Throw Power With Overflow 2", (): void => {
    expectFn(()=>{
      !(new u128(3) ** 81);
    }).toThrow();
  });

  it("should Throw Power With Overflow 3", (): void => {
    expectFn(()=>{
      !(new u128(3) ** 120);
    }).toThrow();
  });

  it("should Throw Power With Overflow 4", (): void => {
    expectFn(()=>{
      !(new u128(4) ** 64);
    }).toThrow();
  });

  it("should Throw Power With Overflow 5", (): void => {
    expectFn(()=>{
      !(new u128(4) ** 120);
    }).toThrow();
  });

  it("should Throw Power With Overflow 6", (): void => {
    expectFn(()=>{
      !(new u128(5) ** 56);
    }).toThrow();
  });

  it("should Throw Power With Overflow 7", (): void => {
    expectFn(()=>{
      !(new u128(5) ** 60);
    }).toThrow();
  });

  it("should Throw Power With Overflow 8", (): void => {
    expectFn(()=>{
      !(new u128(6) ** 50);
    }).toThrow();
  });

  it("should Throw Power With Overflow 9", (): void => {
    expectFn(()=>{
      !(new u128(7) ** 49);
    }).toThrow();
  });

  it("should Throw Power With Overflow 10", (): void => {
    expectFn(()=>{
      !(new u128(8) ** 43);
    }).toThrow();
  });

  it("should Throw Power With Overflow 11", (): void => {
    expectFn(()=>{
      !(new u128(9) ** 41);
    }).toThrow();
  });

  it("should Throw Power With Overflow 12", (): void => {
    expectFn(()=>{
      !(new u128(10) ** 39);
    }).toThrow();
  });

  it("should Throw Power With Overflow 13", (): void => {
    expectFn(()=>{
      !(new u128(11) ** 38);
    }).toThrow();
  });

  it("should Throw Power With Overflow 14", (): void => {
    expectFn(()=>{
      !(new u128(12) ** 36);
    }).toThrow();
  });

  it("should Throw Power With Overflow 15", (): void => {
    expectFn(()=>{
      !(new u128(0, 1) ** 2);
    }).toThrow();
  });

  it("should Throw Power With Overflow 16", (): void => {
    expectFn(()=>{
      !(new u128(u64.MAX_VALUE) ** 3);
    }).toThrow();
  });
})

describe("Buffer Conversion", () => {

  it("should Convert From Bytes Little Endian", (): void => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect<u128>(u128.fromBytes(arr)).toStrictEqual(new u128(0x8877665544332211, 0x12ffeeddccbbaa99));
  });


  it("should Convert From Bytes Big Endian", (): void => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect<u128>(u128.fromBytes(arr, true)).toStrictEqual(new u128(0x99aabbccddeeff12, 0x1122334455667788));
  });

});
