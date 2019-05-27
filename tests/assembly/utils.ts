export function arrayToUint8Array(arr: u8[]): Uint8Array {
    let len = arr.length;
    let res = new Uint8Array(len);
    memory.copy(<usize>res.buffer.data, <usize>arr.buffer_.data, len);
    return res;
}
