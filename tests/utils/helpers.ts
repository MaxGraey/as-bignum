import * as fs   from 'fs';
import * as path from 'path';
import * as util from 'util';

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

function getString(ptr: number, buffer: ArrayBuffer): string {
  var U16 = new Uint16Array(buffer);
  var U32 = new Uint32Array(buffer);
  var dataLength = U32[ptr >>> 2];
  var dataOffset = (ptr + 4) >>> 1;
  var dataRemain = dataLength;
  var parts = [];
  const chunkSize = 1024;
  while (dataRemain > chunkSize) {
    let last = U16[dataOffset + chunkSize - 1];
    let size = last >= 0xD800 && last < 0xDC00 ? chunkSize - 1 : chunkSize;
    let part = U16.subarray(dataOffset, dataOffset += size);
    parts.push(String.fromCharCode.apply(String, part));
    dataRemain -= size;
  }
  return parts.join('') + String.fromCharCode.apply(String, U16.subarray(dataOffset, dataOffset + dataRemain));
}

function buildImports(name: string, memory: WebAssembly.Memory): { [key: string]: object } {
  const buffer = memory.buffer;
  return {
    env: {
      memory,
      abort(msgPtr: number, filePtr: number, line: number, column: number) {
        if (msgPtr) {
          throw new Error(
            `Abort called by reason "${ getString(msgPtr, buffer) }" at ${ getString(filePtr, memory.buffer) } [${ line }:${ column }]`
          );
        } else {
          throw new Error(`Abort called at ${ getString(filePtr, memory.buffer) } [${ line }:${ column }]`);
        }
      }
    },
    [name]: {
      logStr(strPtr: number) {
        console.log(getString(strPtr, memory.buffer));
      }
    }
  };
}
