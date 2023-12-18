import * as helper from "../integer/helper";

describe("u64 helper", () => {
  it("Should left shift simple u64 value", () => {
    expect(helper.u64SafeShl(8, 1)).toStrictEqual(16);
  });

  it("Should return the same number when shifted by 0", () => {
    expect(helper.u64SafeShl(8, 0)).toStrictEqual(8);
  });

  it("Should return 0 when shifted by 64", () => {
    expect(helper.u64SafeShl(8, 64)).toStrictEqual(0);
  });

  it("Should left shift by a large value", () => {
    expect(helper.u64SafeShl(1, 63)).toStrictEqual(2 ** 63);
  });

  it("Should right shift simple u64 value", () => {
    expect(helper.u64SafeShr(8, 1)).toStrictEqual(4);
  });

  it("Should return the same number when shifted by 0", () => {
    expect(helper.u64SafeShr(8, 0)).toStrictEqual(8);
  });

  it("Should return 0 when shifted by 64", () => {
    expect(helper.u64SafeShr(8, 64)).toStrictEqual(0);
  });

  it("Should right shift by a large value", () => {
    expect(helper.u64SafeShr(2 ** 63, 63)).toStrictEqual(1);
  });
});
