import * as fs    from 'fs';
import * as path  from 'path';
import * as util  from 'util';
import { test } from "ava";
import {
  demangle,
  buildImports,
  camelToSpaced
} from './utils/helpers';

const readFile = util.promisify(fs.readFile);

const memory = new WebAssembly.Memory({ initial: 2 });
const buffer = new Uint8Array(memory.buffer);
const imports = buildImports('u128.spec.as', memory, buffer);
var instance: any;

let x = async() => {
    const file   = await readFile(path.join(__dirname, 'build/u128.wasm'));
    const result = await WebAssembly.instantiate(file, imports);
    instance = demangle(result.instance.exports);
};

x().then(()=> {
  for (const tests in instance) {
    for (const testName in instance[tests]) {
      test(camelToSpaced(testName), (t) => {
        t.is(instance[tests][testName](), 1);
      });
    }
  }
});
