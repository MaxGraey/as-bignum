export function arrayToUint8Array(arr: u8[]): Uint8Array {
    let len = arr.length;
    let res = new Uint8Array(len);
    memory.copy(<usize>res.buffer + res.byteOffset, <usize>arr.buffer, len);
    return res;
}
