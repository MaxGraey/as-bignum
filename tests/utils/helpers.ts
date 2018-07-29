export { demangle } from '../../node_modules/assemblyscript/lib/loader';

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
      result = result.concat(binary.charAt(bit ? 1 : 0));
    }
  }
  return result;
}

export function buildImports(name: string, memory: WebAssembly.Memory, buffer: Uint8Array): { [key: string]: any } {
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

export function decamelize(s: string): string {
  return s.replace(/([A-Z])/g, ' $1') || '';
}
