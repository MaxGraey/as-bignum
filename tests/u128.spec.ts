import * as fs    from 'fs';
import * as path  from 'path';
import * as util  from 'util';

declare const expect: any;

import {
  demangle,
  decamelize,
  buildImports,
} from './utils/helpers';

const readFile = util.promisify(fs.readFile);

const memory = new WebAssembly.Memory({ initial: 2 });
const buffer = new Uint8Array(memory.buffer);
const imports = buildImports('u128.spec.as', memory, buffer);

describe("u128 tests", async () => {
  const file     = await readFile(path.join(__dirname, 'build/u128.wasm'));
  const result   = await WebAssembly.instantiate(file, imports);
  const instance = demangle(result.instance.exports) as { [key: string]: any };

  for (const tests in instance) {
    describe(decamelize(tests), () => {
      for (const name in instance[tests]) {
        test(decamelize(name), () => {
          expect(instance[tests][name]()).toBeTruthy();
        });
      }
    });
  }
});
