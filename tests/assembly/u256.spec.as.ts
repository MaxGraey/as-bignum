import { u256 } from '../../assembly/integer/u256';
import { arrayToUint8Array } from "./utils";

declare function logStr(str: string | null): void;
declare function logU256Packed(msg: string | null, lo1: f64, lo2: f64, hi1: f64, hi2: f64): void;
declare function logF64(val: f64): void;

function logU256(value: u256, msg: string | null = null): void {
  assert(value);
  logU256Packed(msg,
    reinterpret<f64>(value.lo1),
    reinterpret<f64>(value.lo2),
    reinterpret<f64>(value.hi1),
    reinterpret<f64>(value.hi2),
  );
}

export class StringConversionTests {
  static shouldConvertToDecimalString1(): bool {
    var a = new u256(10248516654965971928, 5, 0, 0);
    return '102482237023513730008' == a.toString();
  }

  static shouldConvertToDecimalString2(): bool {
    var a = new u256(1, 1, 1, 1);
    return '6277101735386680764176071790128604879584176795969512275969' == a.toString();
  }

  static shouldConvertToDecimalString3(): bool {
    var a = u256.Max;
    return '115792089237316195423570985008687907853269984665640564039457584007913129639935' == a.toString();
  }

  static shouldConvertToDecimalString4(): bool {
    var a = u256.Zero;
    return '0' == a.toString();
  }
}

export class BufferConversionTests {
  static shouldConvertFromBytesLittleEndian1(): bool {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    return u256.fromBytes(arr) == new u256(0x8877665544332211, 0x12ffeeddccbbaa99, 0x8877665544332211, 0x12ffeeddccbbaa99);
  }

  static shouldConvertFromBytesLittleEndian2(): bool {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    var uint8array = arrayToUint8Array(arr);

    return u256.fromBytes(arr) == new u256(0x8877665544332211, 0x12ffeeddccbbaa99, 0x8877665544332211, 0x12ffeeddccbbaa99);
  }

  static shouldConvertFromBytesBigEndian1(): bool {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];

    return u256.fromBytes(arr, true) == new u256(0x99aabbccddeeff12, 0x1122334455667788, 0x99aabbccddeeff12, 0x1122334455667788);
  }

  static shouldConvertFromBytesBigEndian2(): bool {
    var arr: u8[] = [
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12,
      0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
      0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, 0x12
    ];
    var uint8array = arrayToUint8Array(arr);

    return u256.fromBytes(arr, true) == new u256(0x99aabbccddeeff12, 0x1122334455667788, 0x99aabbccddeeff12, 0x1122334455667788);
  }

  static shouldConvertToBytesLitteEndian1(): bool {
    var u = new u256(0x8877665544332211, 0x12ffeeddccbbaa99, 0x8877665544332211, 0x12ffeeddccbbaa99);
    var a = u.toBytes();
    return (
        a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
        a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
        a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
        a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
        a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
        a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
        a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
        a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
    );
  }

  static shouldConvertToBytesLitteEndian2(): bool {
    var u = new u256(0x8877665544332211, 0x12ffeeddccbbaa99, 0x8877665544332211, 0x12ffeeddccbbaa99);
    var a = u.toUint8Array();
    return (
        a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
        a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
        a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
        a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
        a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
        a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
        a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
        a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
    );
  }

  static shouldConvertToBytesBigEndian1(): bool {
    var u = new u256(0x99aabbccddeeff12, 0x1122334455667788, 0x99aabbccddeeff12, 0x1122334455667788);
    var a = u.toBytes(true);
    return (
      a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
      a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
      a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
      a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
      a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
      a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
      a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
      a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
    );
  }

  static shouldConvertToBytesBigEndian2(): bool {
    var u = new u256(0x99aabbccddeeff12, 0x1122334455667788, 0x99aabbccddeeff12, 0x1122334455667788);
    var a = u.toUint8Array(true);
    return (
        a[0]  == 0x11 && a[1]  == 0x22 && a[2]  == 0x33 && a[3]  == 0x44 &&
        a[4]  == 0x55 && a[5]  == 0x66 && a[6]  == 0x77 && a[7]  == 0x88 &&
        a[8]  == 0x99 && a[9]  == 0xAA && a[10] == 0xBB && a[11] == 0xCC &&
        a[12] == 0xDD && a[13] == 0xEE && a[14] == 0xFF && a[15] == 0x12 &&
        a[16] == 0x11 && a[17] == 0x22 && a[18] == 0x33 && a[19] == 0x44 &&
        a[20] == 0x55 && a[21] == 0x66 && a[22] == 0x77 && a[23] == 0x88 &&
        a[24] == 0x99 && a[25] == 0xAA && a[26] == 0xBB && a[27] == 0xCC &&
        a[28] == 0xDD && a[29] == 0xEE && a[30] == 0xFF && a[31] == 0x12
    );
  }
}

export class BasicOperationsTests {
  static shouldNumberIsZero1(): bool {
    var a = u256.Zero;
    return a.isZero();
  }

  static shouldNumberIsZero2(): bool {
    var a = u256.One;
    return !a.isZero();
  }

  static shouldNumberBinaryNot(): bool {
    var a = new u256(1, 2, 3, 4);
    return ~a == new u256(~1, ~2, ~3, ~4);
  }

  static shouldNumberUnaryPositive(): bool {
    var a = new u256(1, 2, 3, 4);
    return a == +a;
  }

  static shouldNumberNonEmpty(): bool {
    var a = u256.One;
    return !!a;
  }

  static shouldNumberIsEmpty1(): bool {
    var a = u256.Zero;
    return !a;
  }
}
