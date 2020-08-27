import { CharCode } from "util/string";
import { u128 } from "./integer/u128";
import { u256 } from "./integer/u256";

// @ts-ignore: decorator
@lazy const HEX_CHARS = '0123456789abcdef';

// @ts-ignore: decorator
@lazy const MaxBaseForExponent128: u64[] = [
  u64.MAX_VALUE,       // 0
  u64.MAX_VALUE,       // 1
  u64.MAX_VALUE,       // 2
  0x000006597FA94F5B,  // 3
  0x00000000FFFFFFFF,  // 4
  0x0000000003080C00,  // 5
  0x0000000000285145,  // 6
  0x000000000004E045,  // 7
  0x000000000000FFFF,  // 8
  0x0000000000004AA8,  // 9
  0x0000000000001BDB,  // 10
  0x0000000000000C6F,  // 11
  0x0000000000000659,  // 12
  0x0000000000000398,  // 13
  0x0000000000000235,  // 14
  0x0000000000000172,  // 15
  0x00000000000000FF,  // 16
  0x00000000000000B8,  // 17
  0x000000000000008A,  // 18
  0x000000000000006A,  // 19
  0x0000000000000054,  // 20
  0x0000000000000044,  // 21
  0x0000000000000038,  // 22
  0x000000000000002F,  // 23
  0x0000000000000028,  // 24
  0x0000000000000022,  // 25
  0x000000000000001E,  // 26
  0x000000000000001A,  // 27
  0x0000000000000017,  // 28
  0x0000000000000015,  // 29
  0x0000000000000013,  // 30
  0x0000000000000011,  // 31
  0x000000000000000F,  // 32
  0x000000000000000E,  // 33
  0x000000000000000D,  // 34
  0x000000000000000C,  // 35
  0x000000000000000B,  // 36
  0x000000000000000B,  // 37
  0x000000000000000A,  // 38
];

// Use LUT wrapped by function for lazy compilation
// @ts-ignore: decorator
@lazy const RadixCharsTable: u8[] = [
   0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 36, 36, 36, 36, 36, 36,
  36, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
  25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 36, 36, 36, 36,
  36, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
  25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35
];

@inline
export function isPowerOverflow128(base: u128, exponent: i32): bool {
  if (!(exponent > 1 && base > u128.One)) return false;
  if (base.hi != 0 || exponent >= 128)    return true;

  var low = base.lo;
  if (low <= 9) {
    switch (<i32>low) {
      case 2: return exponent > 127;
      case 3: return exponent > 80;
      case 4: return exponent > 63;
      case 5: return exponent > 55;
      case 6: return exponent > 49;
      case 7: return exponent > 45;
      case 8: return exponent > 42;
      case 9: return exponent > 40;
    }
  }
  return low > MaxBaseForExponent128[exponent];
}

// helper function for utoa
function processU64(digits: Int8Array, value: u64): void {
  var length = digits.length - 1;
  for (let i = 63; i != -1; i--) {
    for (let j = 0; j <= length; j++) {
      digits[j] = digits[j] + (i8(digits[j] >= 5) * 3);
    }
    for (let j = length; j != -1; j--) {
      digits[j] = digits[j] << 1;
      if (j < length) digits[j + 1]  = (digits[j+1] | i8(digits[j] > 15));
      digits[j] = digits[j] & 15;
    }
    digits[0] = digits[0] + i8((value & (1 << i)) != 0);
  }
}

export function u128toa10(value: u128): string {
  var length = 40;
  var digits = new Int8Array(length);

  processU64(digits, value.hi);
  processU64(digits, value.lo);

  var result = "";
  var start = false;
  for (let i = length - 1; i != -1; i--) {
    if (!start && digits[i] > 0) start = true;
    if (start) result = result.concat(HEX_CHARS.charAt(digits[i]));
  }
  return result;
}

export function u256toa10(value: u256): string {
  var length = 78;
  var digits = new Int8Array(length);

  processU64(digits, value.hi2);
  processU64(digits, value.hi1);
  processU64(digits, value.lo2);
  processU64(digits, value.lo1);

  var result = "";
  var start = false;
  for (let i = length - 1; i != -1; i--) {
    if (!start && digits[i] > 0) start = true;
    if (start) result = result.concat(HEX_CHARS.charAt(digits[i]));
  }
  return result;
}

export function atou128(str: string, radix: i32 = 10): u128 {
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
  // @ts-ignore
  var index = <i32>(isNeg | (first == CharCode.PLUS));

  if (str.charCodeAt(index) == CharCode._0) {
    let second = str.charCodeAt(++index);
    if (second == CharCode.x || second == CharCode.X) {
      radix = 16; ++index;
    } else if (second == CharCode.o || second == CharCode.O) {
      radix = 8; ++index;
    } else if (second == CharCode.b || second == CharCode.B) {
      radix = 2; ++index;
    }
  }
  var result = u128.Zero;
  var table  = RadixCharsTable;

  if (ASC_SHRINK_LEVEL >= 1) {
    let radix128 = u128.fromU64(radix);
    do {
      let n: u32 = str.charCodeAt(index) - CharCode._0;
      if (n > <u32>(CharCode.z - CharCode._0)) break;

      let num = unchecked(table[n]);
      if (num >= <u8>radix) break;

      // @ts-ignore
      result *= radix128;
      // @ts-ignore
      result += u128.fromU64(num);
    } while (++index < len);
  } else {
    switch (radix) {
      case 2: {
        do {
          let num: u32 = str.charCodeAt(index) - CharCode._0;
          if (num >= 2) break;
          // @ts-ignore
          result <<= 1;
          // @ts-ignore
          result |= u128.fromU64(num);
        } while (++index < len);
        break;
      }
      case 10: {
        do {
          let num: u32 = str.charCodeAt(index) - CharCode._0;
          if (num >= 10) break;
          // @ts-ignore
          result  = (result << 3) + (result << 1);
          // @ts-ignore
          result += u128.fromU64(num);
        } while (++index < len);
        break;
      }
      case 16: {
        do {
          let n: u32 = str.charCodeAt(index) - CharCode._0;
          if (n > <u32>(CharCode.z - CharCode._0)) break;

          let num = unchecked(table[n]);
          if (num >= 16) break;

          // @ts-ignore
          result <<= 4;
          // @ts-ignore
          result |= u128.fromU64(num);
        } while (++index < len);
        break;
      }
      default: {
        let radix128 = u128.fromU64(radix);
        do {
          let n: u32 = str.charCodeAt(index) - CharCode._0;
          if (n > <u32>(CharCode.z - CharCode._0)) break;

          let num = unchecked(table[n]);
          if (num >= <u8>radix) break;

          // @ts-ignore
          result *= radix128;
          // @ts-ignore
          result += u128.fromU64(num);
        } while (++index < len);
        break;
      }
    }
  }
  // @ts-ignore
  return isNeg ? -result : result;
}
