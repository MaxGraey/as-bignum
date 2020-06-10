export function arrayToUint8Array(arr: u8[]): Uint8Array {
  let len = arr.length;
  let res = new Uint8Array(len);
  // @ts-ignore
  memory.copy(res.dataStart, arr.dataStart, len);
  return res;
}
