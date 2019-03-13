<!-- [![Build Status](https://img.shields.io/travis/com/MaxGraey/bignum.wasm.svg?style=flat-square&label=linux%20%26%20osx)](https://travis-ci.org/MaxGraey/bignum.wasm) -->
[![Build Status](https://travis-ci.com/MaxGraey/bignum.wasm.svg?branch=master)](https://travis-ci.com/MaxGraey/bignum.wasm)
[![License](https://img.shields.io/badge/license-Apache%202.0-ba68c8.svg?style=flat-square)](https://opensource.org/licenses/Apache-2.0)

## Work in progress

---

### WebAssembly fixed length big numbers written on [AssemblyScript](https://github.com/AssemblyScript/assemblyscript)

Provide wide numeric types such as `u128`, `u256`, `i128`, `i256` and fixed points and also its arithmetic operations.

Namespace `safe` contain equivalents with overflow/underflow traps.

All kind of types pretty useful for economical and cryptographic usages and provide deterministic behavior.

### Install

> yarn add MaxGraey/bignum.wasm

or

> npm install MaxGraey/bignum.wasm

### Usage via AssemblyScript

```ts
import "allocator/arena";
import { u128 } from "../node_modules/bignum/assembly/integer/u128";

declare function logf(value: f64): void;

var a = u128.One;
var b = u128.from(-32); // same as u128.from<i32>(-32)
var c = new u128(0x1, -0xF);
var d = u128.from(0x0123456789ABCDEF); // same as u128.from<i64>(0x0123456789ABCDEF)
var e = u128.from('0x0123456789ABCDEF01234567');
var f = u128.fromString('11100010101100101', 2); // same as u128.from('0b11100010101100101')
var r = d / c + (b << 5) + e;

logf(r.as<f64>());
```

### Usage via JavaScript/Typescript

```ts
TODO
```

### List of types

- [x] [`u128`](https://github.com/MaxGraey/bignum.wasm/blob/master/assembly/integer/u128.ts) unsigned type (tested)
- [ ] [`u256`](https://github.com/MaxGraey/bignum.wasm/blob/master/assembly/integer/u256.ts) unsigned type (very basic)
- [ ] `i128` signed type
- [ ] `i256` signed type
---
- [x] [`safe.u128`](https://github.com/MaxGraey/bignum.wasm/blob/master/assembly/integer/safe/u128.ts) unsigned type (tested)
- [ ] `safe.u256` unsigned type
- [ ] `safe.i128` signed type
- [ ] `safe.i256` signed type
---
- [ ] [`fp128<Q>`](https://github.com/MaxGraey/bignum.wasm/blob/master/assembly/fixed/fp128.ts) generic fixed point signed type٭ (very basic for now)
- [ ] `fp256<Q>` generic fixed point signed type٭
---
- [ ] `safe.fp128<Q>` generic fixed point signed type٭
- [ ] `safe.fp256<Q>` generic fixed point signed type٭

٭ _typename_ `Q` _is a type representing count of fractional bits_
