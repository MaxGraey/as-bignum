import * as fs    from 'fs';
import * as path  from 'path';
import * as util  from 'util';

import { demangle } from '../../node_modules/assemblyscript/lib/loader';

type ExportedEntry   = { [key: string]: Function };
type ExportedEntries = { [key: string]: ExportedEntry };

const readFile = util.promisify(fs.readFile);

export async function setup(testName: string): Promise<ExportedEntries> {
  const file     = await readFile(path.resolve(__dirname, `../build/${ testName }.wasm`));
  const memory   = new WebAssembly.Memory({ initial: 2 });
  const buffer   = new Uint8Array(memory.buffer);
  const imports  = buildImports(`${ testName }.spec.as`, memory, buffer);
  const result   = await WebAssembly.instantiate(file, imports);
  const instance = demangle<ExportedEntries>(result.instance.exports);
  return instance;
}

export function bufferToString(charArray: Uint8Array): string {
  let result = '';
  for (let i = 0; i < charArray.length; i++) {
    if (charArray[i])
      result = result.concat(String.fromCharCode(charArray[i]));
  }
  return result;
}

export function bufferToBinaryString(buffer: Uint8Array): string {
  const binary = '01';
  let result = '';
  for (let i = 0; i < buffer.length; i++) {
    for (let j = 7; j > -1; j--) {
      let bit = (buffer[i] & (1 << j)) > 0;
      result = result.concat(binary.charAt(+bit));
    }
  }
  return result;
}

export function buildImports(name: string, memory: WebAssembly.Memory, buffer: Uint8Array): { [key: string]: object } {
  return {
    env: {
      abort(msg: string, file: string, line: number, column: number): void {
        console.error(`abort called at ${file} (${line}:${column})`);
      },
      memory
    },
    [name]: {
      logString(size: number, index: number): void {
        let s = '';
        for (let i = index; i < index + size; ++i)
          s += String.fromCharCode(buffer[i]);
        console.log(s);
      }
    }
  };
}

export function decamelize(str: string): string {
  const c = str.replace(/([A-Z0-9])/g, ' $1');
  return c.charAt(0).toUpperCase() + c.slice(1).toLowerCase();
}
