import {u128} from "./integer";

const Pows10_64: u64[] = [
  1,
  10,
  100,
  1000,
  10000,
  100000,
  1000000,
  10000000,
  100000000,
  1000000000,

  10000000000,
  100000000000,
  1000000000000,
  10000000000000,
  100000000000000,
  1000000000000000,
  10000000000000000,
  100000000000000000,
  1000000000000000000,
  10000000000000000000,
];

const HEX_CHARS = '0123456789abcdef';

export function digits10(value: u64): i32 {
  var l = 64 - <i32>clz(value); // log2
  var t = l * 1233 >>> 12;      // l / log2(10)
      t = t - <i32>(value < unchecked(Pows10_64[t]));
  return t + 1;
}

export function utoa10(value: u128): string {

    var length = 40;
    var digits = new Int8Array(length);

    for (let i = 63; i != -1; i--) {
      let left_bit = value.hi & (1 << i) ? 1 : 0;
      for (let digit_index = 0; digit_index < length; digit_index++) {
        digits[digit_index] += digits[digit_index] >= 5 ? 3 : 0;
      }
      for (let j = length - 1; j != -1; j--) {
        digits[j] <<= 1;
        if (j < length - 1) digits[j + 1] |= digits[j] > 15 ? 1 : 0;
        digits[j] &= 15;
      }
      digits[0] += <u8>left_bit;
    }

    for (let i = 63; i != -1; i--) {
      let left_bit = value.lo & (1 << i) ? 1 : 0;
      for (let digit_index = 0; digit_index < length; digit_index++) {
        digits[digit_index] += digits[digit_index] >= 5 ? 3 : 0;
      }
      for (let j = length - 1; j != -1; j--) {
        digits[j] <<= 1;
        if (j < length - 1) digits[j + 1] |= digits[j] > 15 ? 1 : 0;
        digits[j] &= 15;
      }
      digits[0] += <u8>left_bit;
    }

    var result = "";
    var start = false;
    for (let digit_index = length-1; digit_index != -1; digit_index--) {
      if (!start && digits[digit_index] > 0) start = true;
      if (start) result = result.concat(HEX_CHARS.charAt(digits[digit_index]));
    }
    return result;
}
