import { expect } from 'chai';
import { describe, it } from "mocha";

describe('Sanity check for WebAssembly', () => {
  it("should be available", () => {
    expect(WebAssembly.Module).to.be.not.eq(undefined);
  });
});

/*
describe('Basic u128 operations', () => {
  var file = fs.readFileSync("test/build/u128.wasm");
  var memory = new WebAssembly.Memory({initial: 2});
  var buffer = new Uint8Array(memory.buffer);
  var instance : any;

  var imports = {
    env: {
      abort: (msg : string, file: string, line: number, column: number) => {
        console.error(`abort called at ${ file } (${ line }:${ column })`);
      },
      memory: memory
    }
  };

  WebAssembly.instantiate(file, imports)
    .then((result) => {
      instance = result.instance.exports;
    })
    .catch((error) => {
      console.log(error);
  });;

  it("should convert u32s to u128", () => {
    let p = instance.toU128(225,100,54,21);
    console.log(bufferToBinaryString(buffer.subarray(p, p + 16)));
  })

  it("should add 1 plus 1", () => {
    let p = instance.plus(1,1);
    expect(buffer[p]).to.be.eq(2);
  })
  it("should add 100 plus 100", () => {
    let p = instance.plus(100,100);
    expect(buffer[p]).to.be.eq(200);
  })
  it("should add 1000000 plus 1000000", () => {
    let p = instance.plus(1000000,1000000);
    expect(comparei32withU128(2000000, buffer.subarray(p, p + 16))).to.be.eq(true);
  })
  let a = 0x0000000001
  for (var j = 0; j < 31; j+=2) {
    let _a = a << j;
    it("should add two " + _a, () => {
      let p = instance.plus(_a, _a);
      expect(comparei32withU128(_a + _a, buffer.subarray(p, p + 16))).to.be.eq(true);
    })
  }

  it("should add two big numbers", () => {
    let p = instance.plusBN(1,1,1,1);
    for (var j = 0; j < 16; j++) {
      //console.log(buffer[p + j]);
    }
    let p2 = instance.pToHexString(p);
    let result = bufferToString(buffer.subarray(p2, p2 + 32));
    expect(result).to.be.eq("10000000000000000");
  })

  it("should convert to hex string", () => {
    // let p = instance.toHex(255);
    let p = instance.toHexString(255, 0, 100, 0);
    let charArray = buffer.subarray(p, p + 32);
    let result = bufferToString(charArray);
    expect(result).to.be.eq("6400000000000000ff");
  })

  it("should convert to decimal string", () => {
    let p = instance.toString(255, 0, 100, 0);
    let result = bufferToString(buffer.subarray(p, p + 40));
    console.log(result);
  })

  // it("should convert to LE byte array", () => {
  //   let p = instance.toBytesLE(255);
  //   for (var i = 0; i < 16 ; i++) {
  //     console.log(buffer[p+i]);
  //   }
  //   expect(buffer[p]).to.be.eq(255);
  //   expect(buffer[p+1]).to.be.eq(0);
  //   expect(buffer[p+2]).to.be.eq(0);
  //   // console.log(instance.toU8(256, 0));
  //   // console.log(instance.toU8(256, 8));
  //   // console.log(instance.toU8(256, 16));
  // })
})
*/