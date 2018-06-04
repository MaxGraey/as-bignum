// import { u128 } from './integer/u128';

/*
 * Current utility functions can be overloaded by imported from environment with same name and signatue.
 *
 * Example:
 *  declare function __floatuntidf(lo: u64, hi: u64): f64
 */

/**
 * Convert 128-bit unsigned integer to 64-bit float
 * @param  lo lower  64-bit part of unsigned 128-bit integer
 * @param  hi higher 64-bit part of unsigned 128-bit integer
 * @return    64-bit float result
 */
@global
export function __floatuntidf(lo: u64, hi: u64): f64 {
  /*
  // LLVM implementation of __floatuntidf ported to AssemblyScript

  if (lo == 0 && hi == 0) return 0.0;

  var v  = new u128(lo, hi);
  var sd = 128 - u128.clz(v);
  var e  = sd - 1;

  if (sd > 53) {
    if (sd != 55) {
      if (sd == 54) {
        v = u128.shl(v, 1);
      }
      else {
        v = (
          u128.shr(v, sd - 55) |
          u128.fromU32(<u32>((v & u128.fromU32(u32.MAX_VALUE >> (128 + 55 - sd))) != 0))
        );
      }
    }

    v.lo |= (v.lo & 4) != 0;
    v.preInc();

    v = u128.shr(v, 2);

    if ((v & u128.fromU64(1 << 53)) != u128.Zero) {
      v = u128.shr(v, 1);
      ++e;
    }
  } else {
    v = u128.shl(v, 53 - sd);
  }

  var w: u64 = u128.shr(v, 32).lo & 0x000FFFFF;
  var u: u64 = <u64>(((e + 1023) << 20) | w) << 32; // high part
  return reinterpret<f64>(u | (v.lo & 0xFFFFFFFF));
  */

  // Simpler and faster alternative
  let shift = reinterpret<f64>(0x43F0000000000000); // 2 ^ 64
  if (hi >= 0)
    return <f64>hi * shift + <f64>lo;

  var rh: i64 = ~hi;
  var rl: u64 = ~lo;

  // rl += 1;
  // rh += <i64>(rl == 0);

  var cy = ((rl & 1) + (rl >> 1)) >> 63;
  rl += 1;
  rh += cy;

  return -(<f64>rh * shift + <f64>rl);
}
