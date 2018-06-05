## Work in progress
#### (Not useful and untested yet)

---

### WebAssembly fixed length big numbers written on [AssemblyScript](https://github.com/AssemblyScript/assemblyscript)

Provide wide numeric types such as `u128`, `u256`, `i128`, `i256` and fixed points and also its arithmetic operations.

Namespace `safe` contain equivalents with overflow/underflow traps.

All kind of types pretty useful for economical and cryptographic usages and provide deterministic behavior.

### Install

> yarn add MaxGraey/bignum

### Usage via AssemblyScript

```ts
import "allocator/arena";
import { u128 } from "bignum.wasm/assembly/integer";

declare function console_log(value: f64): void;

var a = u128.Zero;
var b = u128.fromI32(-32);
var c = new u128(0x1, -0xF);
var d = u128.fromU64(1 << 40);

var r = a * d + (b << 5);

console_log(r.toF64());
```

### Usage via JavaScript/Typescript

```ts
TODO
```

### List of types

- [ ] `u128` unsigned type (mostly complete)
- [ ] `u256` unsigned type
- [ ] `i128` signed type
- [ ] `i256` signed type
---
- [ ] `safe.u128` unsigned type
- [ ] `safe.u256` unsigned type
- [ ] `safe.i128` signed type
- [ ] `safe.i256` signed type
---
- [ ] `fp128<Q>` generic fixed point signed type٭
- [ ] `fp256<Q>` generic fixed point signed type٭
---
- [ ] `safe.fp128<Q>` generic fixed point signed type٭
- [ ] `safe.fp256<Q>` generic fixed point signed type٭

٭ _typename_ `Q` _is a count of fractional bits_
