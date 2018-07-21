import { expect } from 'chai';
import { describe, it } from "mocha";
import * as fs from 'fs';
import { comparei32withU128 } from './utils/helpers';

describe('Sanity check for WebAssembly', () => {
  it("should be available", () => {
    expect(WebAssembly.Module).to.be.not.eq(undefined);
  });
});

describe('Basic u128 operations', () => {
  var file = fs.readFileSync("tests/assembly/build/u128.wasm");
  var memory = new WebAssembly.Memory({ initial: 1 });
  var buffer = new Uint8Array(memory.buffer);
  var instance: any;

  var imports = {
    env: {
      abort(msg: string, file: string, line: number, column: number): void {
        console.error(`abort called at ${ file } (${ line }:${ column })`);
      },
      memory
    }
  };

  WebAssembly.instantiate(file, imports)
    .then(result => {
      instance = result.instance.exports;
    })
    .catch(err => {
      console.error(err);
    });

  it("should add 1 plus 1", () => {
    let p = instance.plus(1, 1);
    expect(buffer[p]).to.be.eq(2);
  });

  it("should add 100 plus 100", () => {
    let p = instance.plus(100, 100);
    expect(buffer[p]).to.be.eq(200);
  });

  it("should add 1000000 plus 1000000", () => {
    let p = instance.plus(1000000, 1000000);
    expect(comparei32withU128(2000000, buffer.subarray(p, p + 16))).to.be.eq(true);
  });
});
