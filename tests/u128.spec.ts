import * as fs    from 'fs';
import * as path  from 'path';
import * as util  from 'util';
import { test }   from 'ava';
import {
  demangle,
  decamelize,
  buildImports,
} from './utils/helpers';

type ExportedEntry   = { [key: string]: Function };
type ExportedEntries = { [key: string]: ExportedEntry };

const readFile = util.promisify(fs.readFile);

(async () => {
  const file     = await readFile(path.join(__dirname, 'build/u128.wasm'));
  const memory   = new WebAssembly.Memory({ initial: 2 });
  const buffer   = new Uint8Array(memory.buffer);
  const imports  = buildImports('u128.spec.as', memory, buffer);
  const result   = await WebAssembly.instantiate(file, imports);
  const instance = demangle<ExportedEntries>(result.instance.exports);

  for (const tests in instance) {
    for (const testName in instance[tests]) {
      test(decamelize(testName), t => {
        t.truthy(instance[tests][testName]());
      });
    }
  }
})();
