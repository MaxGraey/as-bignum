import { expect } from 'chai';
import { describe, it } from "mocha";
import * as fs from 'fs';

describe('Basic Operations Test', () => {
    var file = fs.readFileSync("tests/build/u128.wasm");
    var memory = new WebAssembly.Memory({initial: 2});
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
});