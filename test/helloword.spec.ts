import { expect } from 'chai';
import { describe, it } from "mocha";
import * as fs from 'fs';
import { comparei32withU128 } from './utils/test_utils';

describe('Sanity check for WebAssembly', () => {
    it("should be available", () => {
        expect(WebAssembly.Module).to.be.not.eq(undefined);
    });
});

describe('Basic u128 operations', () => {
    var file = fs.readFileSync("test/build/u128.wasm");
    var memory = new WebAssembly.Memory({initial: 1});
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
})