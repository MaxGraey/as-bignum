import { u128 } from "./integer";
import { CharCode } from "internal/string";

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

const RadixChars: u32[] = [
   0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 36, 36, 36, 36, 36, 36,
  36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
  36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
  36, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
  25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35
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

// TODO handle also upprecased high radix decimals in LUT
export function atou128(str: string, radix: i32 = 0): u128 {
  if (!radix) radix = 10;
  if (radix < 2 || radix > 36) {
    throw new Error("Invalid radix");
  }
  var len = str.length;
  if (!len) return u128.Zero;

  var first = str.charCodeAt(0);
  if (len == 1 && first == CharCode._0) {
    return u128.Zero;
  }
  var isNeg = first == CharCode.MINUS;
  var index = <i32>isNeg;

  if (str.charCodeAt(index) == CharCode._0) {
    ++index;
    let second = str.charCodeAt(index);
    if (second == CharCode.x || second == CharCode.X) {
      radix = 16; ++index;
    } else if (second == CharCode.o || second == CharCode.O) {
      radix = 8; ++index;
    } else if (second == CharCode.b || second == CharCode.B) {
      radix = 2; ++index;
    }
  }
  var result   = u128.Zero;
  var radix128 = u128.fromI32(radix);

  do {
    let num = RadixChars[str.charCodeAt(index) - 48];
    if (num >= <u32>radix) return result;
    result *= radix128;
    result += u128.fromU32(num);
  } while (++index < len);

  return isNeg ? -result : result;
}
