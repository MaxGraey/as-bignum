import { test } from 'ava';

test('WebAssembly should be available', (t) => {
  t.not(WebAssembly, undefined);
});
