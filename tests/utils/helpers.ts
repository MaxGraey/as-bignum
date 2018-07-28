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