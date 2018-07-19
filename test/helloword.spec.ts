import { expect } from 'chai';
import { describe, it } from "mocha";
import * as fs from 'fs';

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
            abort: () => {},
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
        for (var i = 0; i < 32; i++) {
            if (i >= 4) var bitValue = 0;
            else var bitValue = (2000000 >> (i * 8)) & 0xff;
            expect(buffer[i + p]).to.be.eq(bitValue);
        }
    })
    let a = 0x0000000001
    let b = 0x0000000001
    for (var j = 0; j < 31; j+=2) {
        let _a = a << j;
        it("should add two " + _a, () => {
            let _b = b << j;
            let p = instance.plus(_a, _b);
            for (var i = 0; i < 32; i++) {
                if (i >= 4) var bitValue = 0;
                else var bitValue = (_a + _b >> (i * 8)) & 0xff;
                expect(buffer[i + p]).to.be.eq(bitValue);
            }
        })
    }
})