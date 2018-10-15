import test from 'ava';

test('WebAssembly should be available',  t => t.not(WebAssembly, undefined));
test('WebAssembly should be compilable', t => t.true(WebAssembly.validate(Uint32Array.of(0x6D736100, 1))));
