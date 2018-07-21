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
