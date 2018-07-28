import { expect } from 'chai';
import { describe, it } from "mocha";
import * as fs from 'fs';
import { buildImports } from './utils/helpers';

describe('Basic Operations Test', () => {
    var file = fs.readFileSync("tests/build/u128.wasm");
    var memory = new WebAssembly.Memory({initial: 2});
    var buffer = new Uint8Array(memory.buffer);
    var imports = buildImports("u128.spec.as", memory, buffer);

    WebAssembly.instantiate(file, imports)
        .then((result) => {
            let instance = result.instance.exports;
            it("should add two numbers", () => {
                expect(instance['BasicOperationsTest#shouldAddTwoNumbers']()).to.be.eq(1);
            })
            it("should subtract two numbers", () => {
                expect(instance['BasicOperationsTest#shouldSubtractTwoNumbers']()).to.be.eq(1);
            })
            it("should right shift one number", () => {
                expect(instance['BasicOperationsTest#shouldRightShiftOneNumber']()).to.be.eq(1);
            })
            it("should left shift one number", () => {
                expect(instance['BasicOperationsTest#shouldLeftShiftOneNumber']()).to.be.eq(1);
            })
            it("should multiply two numbers", () => {
                expect(instance['BasicOperationsTest#shouldMultiplyTwoNumbers']()).to.be.eq(1);
            })
            it.skip("should divide two numbers", () => {
                expect(instance['BasicOperationsTest#shouldDivideTwoNumbers']()).to.be.eq(1);
            })
            it("should increment number", () => {
                expect(instance['BasicOperationsTest#shouldIncrementNumber']()).to.be.eq(1);
            })
            it("should decrement number", () => {
                expect(instance['BasicOperationsTest#shouldDecrementNumber']()).to.be.eq(1);
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
            let instance = result.instance.exports;
            it("should convert to decimal string", () => {
                expect(instance['StringConversionTest#shouldConvertToString']()).to.be.eq(1);
            })
        })
        .catch((error) => {
            console.log(error);
        });
});