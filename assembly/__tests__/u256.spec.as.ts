import { u256 } from '../../assembly/integer/u256';


describe("String Conversion", () => {
  it("Should convert to decimal string 1", () => {
    var a = new u256(10248516654965971928, 5, 0, 0);
    expect('102482237023513730008').toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 2", () => {
    var a = new u256(1, 1, 1, 1);
    expect('6277101735386680764176071790128604879584176795969512275969')
      .toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 3", () => {
    var a = u256.Max;
    expect('115792089237316195423570985008687907853269984665640564039457584007913129639935')
      .toStrictEqual(a.toString());
  });

  it("Should convert to decimal string 4", () => {
    var a = u256.Zero;
    expect('0').toStrictEqual(a.toString());
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
    expect(u256.fromBytes(arr))
      .toStrictEqual(new u256(
        0x8877665544332211,
        0x12FFEEDDCCBBAA99,
        0x8877665544332211,
        0x12FFEEDDCCBBAA99
      ));
  });

  it("Should convert from bytes Little Endian 2", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect(u256.fromBytes(arr))
      .toStrictEqual(new u256(
        0x8877665544332211,
        0x12FFEEDDCCBBAA99,
        0x8877665544332211,
        0x12FFEEDDCCBBAA99
      ));
  });

  it("Should convert from bytes Big Endian 1", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect(u256.fromBytes(arr, true))
      .toStrictEqual(new u256(
        0x99AABBCCDDEEFF12,
        0x1122334455667788,
        0x99AABBCCDDEEFF12,
        0x1122334455667788
      ));
  });

  it("Should convert from bytes Big Endian 2", () => {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    expect(u256.fromBytes(arr, true))
      .toStrictEqual(new u256(
        0x99AABBCCDDEEFF12,
        0x1122334455667788,
        0x99AABBCCDDEEFF12,
        0x1122334455667788
      ));
  });

  it("Should convert to bytes Litte Endian 1", () => {
    var u = new u256(
      0x8877665544332211,
      0x12FFEEDDCCBBAA99,
      0x8877665544332211,
      0x12FFEEDDCCBBAA99
    );
    let a = u.toBytes();
    expect(
      a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
      a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
      a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
      a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
      a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
      a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
      a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
      a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
    ).toBe(true);

    {
      let a = u.toStaticBytes();
      expect(
        a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
        a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
        a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
        a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
        a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
        a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
        a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
        a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
      ).toBe(true);
    }
  });

  it("Should convert to bytes Litte Endian 2", () => {
    var u = new u256(
      0x8877665544332211,
      0x12FFEEDDCCBBAA99,
      0x8877665544332211,
      0x12FFEEDDCCBBAA99
    );
    var a = u.toUint8Array();
    expect(
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
    var u = new u256(
      0x99AABBCCDDEEFF12,
      0x1122334455667788,
      0x99AABBCCDDEEFF12,
      0x1122334455667788
    );
    var a = u.toBytes(true);
    expect(
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
    var u = new u256(
      0x99AABBCCDDEEFF12,
      0x1122334455667788,
      0x99AABBCCDDEEFF12,
      0x1122334455667788
    );
    var a = u.toUint8Array(true);
    expect(
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
    var r = u256.Zero
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
});


describe("Multiply and Division", () => {
	it("Should multiply two u256s with overflow", () => {
		let a = new u256(
			11142227922349685534,
			16951310678181701905,
			14857203971424627032,
			6290441275342153558
		);
		let b = new u256(
			5200246644466926173,
			15376942066676525123,
			14066383352482743744,
			5177351037585900733
		);
		expect(a * b).toStrictEqual(
			new u256(
				13210090900153791974,
				1810913788310153400,
				9439870997793203699,
				17216280037036079591
			)
		);
	});

	it("Should multipy u256 two u256s with overflow 2", () => {
		let a = new u256(
			11403660410442845985,
			5764184157929436624,
			10920641782142051367,
			6535939750585910209
		);
		expect(a * u256.Three).toStrictEqual(
			new u256(
				15764237157618986339,
				17292552473788309873,
				14315181272716602485,
				1161075178048179012
			)
		);
	});

	it("Should divide two u256s correctly", () => {
		let a = new u256(
			9668247459563353064,
			15169628140924935429,
			13779197480884644413,
			15685460806048574825
		);
		let b = new u256(
			7506549287886419514,
			1806893911440772674,
			973188544212552536,
			94450334695304
		);
		expect(a / b).toStrictEqual(
			new u256(
				166070,
				0,
				0,
				0
			)
		);
	});
	
	
	it("Should muldiv correctly", () => {
		let a = new u256(
			10207011120671479217,
			2987523230415508301,
			8384529626532134158,
			156676754624403797
		);
		let b = new u256(
			1401915873839175078,
			13669922148162040455,
			1004933234164435509,
			3803437298577425332
		);
		let d = new u256(
			15881671981995993327,
			11288446181525977226,
			8764558229908810249,
			3732285609800345889
		);
		expect(u256.muldiv(a, b, d)).toStrictEqual(new u256(
			6244065030145454844, 3005783284999727128, 15933527198722458587, 159663614915686478
		));
	});
});