import { expect } from 'chai';
import { describe, it } from "mocha";
import * as fs from 'fs';
import { buildImports } from './utils/helpers';
import { demangle } from '../node_modules/assemblyscript/lib/loader'

describe('Basic Operations Test', () => {
    var file = fs.readFileSync("tests/build/u128.wasm");
    var memory = new WebAssembly.Memory({initial: 2});
    var buffer = new Uint8Array(memory.buffer);
    var imports = buildImports("u128.spec.as", memory, buffer);

    WebAssembly.instantiate(file, imports)
        .then((result) => {
            let instance: any = demangle(result.instance.exports);
            let test = instance.BasicOperationsTest;

            it("should add two numbers", () => {
                expect(test.shouldAddTwoNumbers()).to.be.eq(1);
            })
            it("should subtract two numbers", () => {
                expect(test.shouldSubtractTwoNumbers()).to.be.eq(1);
            })
            it("should right shift one number", () => {
                expect(test.shouldRightShiftOneNumber()).to.be.eq(1);
            })
            it("should left shift one number", () => {
                expect(test.shouldLeftShiftOneNumber()).to.be.eq(1);
            })
            it("should multiply two numbers", () => {
                expect(test.shouldMultiplyTwoNumbers()).to.be.eq(1);
            })
            it.skip("should divide two numbers", () => {
                expect(test.shouldDivideTwoNumbers()).to.be.eq(1);
            })
            it("should increment number", () => {
                expect(test.shouldIncrementNumber()).to.be.eq(1);
            })
            it("should decrement number", () => {
                expect(test.shouldDecrementNumber()).to.be.eq(1);
            })
        })
        .catch((error) => {
            console.log(error);
    });
});

describe('String Conversion Test', () => {
    var file = fs.readFileSync("tests/build/u128.wasm");
    var memory = new WebAssembly.Memory({ initial: 2 });
    var buffer = new Uint8Array(memory.buffer);
    var imports = buildImports("u128.spec.as", memory, buffer);

    WebAssembly.instantiate(file, imports)
        .then((result) => {
            let instance: any = demangle(result.instance.exports);
            let test = instance.StringConversionTest;
            it("should convert to decimal string 1", () => {
                expect(test.shouldConvertToDecimalString1()).to.be.eq(1);
            });
            it("should convert to decimal string 2", () => {
                expect(test.shouldConvertToDecimalString2()).to.be.eq(1);
            });
            it("should convert to decimal string 3", () => {
                expect(test.shouldConvertToDecimalString3()).to.be.eq(1);
            })
        })
        .catch((error) => {
            console.log(error);
        });
});