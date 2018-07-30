import * as fs    from 'fs';
import * as path  from 'path';
import * as util  from 'util';

import { demangle } from '../../node_modules/assemblyscript/lib/loader';

export type ExportedEntry   = { [key: string]: Function };
export type ExportedEntries = { [key: string]: ExportedEntry };

const readFile = util.promisify(fs.readFile);

export function isThrowable(name: string): boolean {
  return name.toLowerCase().includes('throwable');
}

export function decamelize(str: string): string {
  const c = str.replace(/([A-Z0-9])/g, ' $1');
  return c.charAt(0).toUpperCase() + c.slice(1).toLowerCase();
}

export async function setup(testFileName: string): Promise<ExportedEntries> {
  const imports = buildImports(`${ testFileName }.spec.as`, new WebAssembly.Memory({ initial: 2 }));
  const file    = await readFile(path.resolve(__dirname, `../build/${ testFileName }.wasm`));
  const result  = await WebAssembly.instantiate(file, imports);
  return demangle<ExportedEntries>(result.instance.exports);
}

export function bufferToString(charArray: Uint8Array): string {
  let result = '';
  for (let i = 0, len = charArray.length; i < len; ++i) {
    if (charArray[i])
      result += String.fromCharCode(charArray[i]);
  }
  return result;
}

export function bufferToBinaryString(buffer: Uint8Array): string {
  const binary = '01';
  let result = '';
  for (let i = 0, len = buffer.length; i < len; ++i) {
    for (let j = 7; j > -1; j--) {
      let bit = (buffer[i] & (1 << j)) > 0;
      result += binary.charAt(+bit);
    }
  }
  return result;
}

function buildImports(name: string, memory: WebAssembly.Memory): { [key: string]: object } {
  const buffer = new Uint8Array(memory.buffer);

  return {
    env: {
      memory,
      abort(msg: string, file: string, line: number, column: number) {
        console.error(`abort called at ${ file } (${ line }:${ column })`);
      }
    },
    [name]: {
      logString(size: number, index: number) {
        for (var i = index, str = '', len = index + size; i < len; ++i)
          str += String.fromCharCode(buffer[i]);
        console.log(str);
      }
    }
  };
}
