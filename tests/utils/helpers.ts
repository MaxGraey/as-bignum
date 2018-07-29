export { demangle } from '../../node_modules/assemblyscript/lib/loader';

export function bufferToString(charArray: Uint8Array) {
  let result = "";
  for (var i = 0; i < charArray.length; i++) {
    if (charArray[i])
      result = result.concat(String.fromCharCode(charArray[i]));
  }
  return result;
}

export function bufferToBinaryString(buffer: Uint8Array) {
  const binary = "01";
  let result = "";
  for (var i = 0; i < buffer.length; i++) {
    for (var j = 7; j > -1; j--) {
      let bit = (buffer[i] & (1 << j)) > 0;
      result = result.concat(binary.charAt(bit ? 1 : 0));
    }
  }
  return result;
}

export function buildImports(name: string, memory: WebAssembly.Memory, buffer: Uint8Array): any {
  var imports: any = {
    env: {
      abort: (msg: string, file: string, line: number, column: number) => {
        console.error(`abort called at ${file} (${line}:${column})`);
      },
      memory: memory
    }
  };
  imports[name] = {
    logString: (size: number, index: number) => {
      let s = "";
      for (let i = index; i < index + size; ++i) {
        s += String.fromCharCode(buffer[i]);
      }
      console.log(s);
    }
  }
  return imports
}

export function camelToSpaced(s: string): string {
  return s.replace(/([A-Z])/g, ' $1');
}