export function comparei32withU128(num: number, buffer: Uint8Array): boolean {
  for (var i = 0; i < 16; i++) {
    if (i >= 4) var bitValue = 0;
    else var bitValue = (num >> (i * 8)) & 0xff;

    if (buffer[i] != bitValue) {
      console.log(num, i, buffer[i], bitValue);
      return false;
    }
  }
  return true;
}

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