## Work in progress
#### (Not useful yet)
---

### WebAssembly fixed length big numbers written on [AssemblyScript](https://github.com/AssemblyScript/assemblyscript)

Provide wide numeric types such as `u128`, `u256`, `i128`, `i256` and fixed points and also its arithmetic operations.

Namespace `safe` contain equivalents with overflow/underflow traps.

All kind of types pretty useful for economical and cryptographic usages and provide deterministic behavior.

### Usage

```ts
import "allocator/arena";
import { u128 } from "assembly/integer";

var a = u128.Zero;
var b = u128.fromI32(-32);
var c = new u128(0x1, -0xF);
var d = u128.fromU64(1 << 40);

var r = a * d + (b << 5);
```

### Install

> yarn add MaxGraey/bignum
