## Work in progress
#### (Not useful and untested yet)

---

### WebAssembly fixed length big numbers written on [AssemblyScript](https://github.com/AssemblyScript/assemblyscript)

Provide wide numeric types such as `u128`, `u256`, `i128`, `i256` and fixed points and also its arithmetic operations.

Namespace `safe` contain equivalents with overflow/underflow traps.

All kind of types pretty useful for economical and cryptographic usages and provide deterministic behavior.

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

### Install

> yarn add MaxGraey/bignum

### List of types
-
- [ ] u128 type (mostly complete)
- [ ] u256 type
- [ ] i128 type
- [ ] i256 type
-
- [ ] safe.u32  type
- [ ] safe.u64  type
- [ ] safe.i32  type
- [ ] safe.i64  type
- [ ] safe.u128 type
- [ ] safe.u256 type
- [ ] safe.i128 type
- [ ] safe.i256 type
-
- [ ] fp128 type
- [ ] fp256 type
-
- [ ] safe.fp128 type
- [ ] safe.fp256 type
