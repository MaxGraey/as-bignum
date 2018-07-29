import { expect } from 'chai';
import { describe, it } from "mocha";
import * as fs from 'fs';
import { buildImports, camelToSpaced } from './utils/helpers';
import { demangle } from '../node_modules/assemblyscript/lib/loader'

var file = fs.readFileSync("tests/build/u128.wasm");
var memory = new WebAssembly.Memory({initial: 2});
var buffer = new Uint8Array(memory.buffer);
var imports = buildImports("u128.spec.as", memory, buffer);

WebAssembly.instantiate(file, imports)
  .then((result) => {
    let instance: any = demangle(result.instance.exports);
    for (let tests in instance) {
      describe(camelToSpaced(tests), () => {
        for (let test in instance[tests]) {
          it(camelToSpaced(test), () => {
            expect(instance[tests][test]()).to.be.eq(1);
          })
        }
      })
    }
  });