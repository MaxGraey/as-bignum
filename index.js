const fs   = require('fs');
const path = require('path');

const releasePath = path.resolve(__dirname, '/build/release/bignum.wasm');
const compiled    = new WebAssembly.Module(fs.readFileSync(releasePath));

Object.defineProperty(module, 'exports', {
  get: () => new WebAssembly.Instance(compiled, {}).exports
});
