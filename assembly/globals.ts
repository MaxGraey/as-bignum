import { u128 } from './integer/u128';

/*
 * Current utility functions can be overloaded by imported from environment with same name and signatue.
 *
 * Example:
 *  declare function __floatuntidf(lo: u64, hi: u64): f64
 */

// used for returning quotient and reminder from __divmod128
export var __divmod_quot_lo: u64 = 0;
export var __divmod_quot_hi: u64 = 0;
export var __divmod_rem_lo: u64  = 0;
export var __divmod_rem_hi: u64  = 0;

/**
 * Convert 128-bit unsigned integer to 64-bit float
 * @param  lo lower  64-bit part of unsigned 128-bit integer
 * @param  hi higher 64-bit part of unsigned 128-bit integer
 * @return    64-bit float result
 */
@global
export function __floatuntidf(lo: u64, hi: u64): f64 {
  // __floatuntidf ported from LLVM sources
  if (lo == 0 && hi == 0) return 0.0;

  var v  = new u128(lo, hi);
  var sd = 128 - __clz128(lo, hi);
  var e  = sd - 1;

  if (sd > 53) {
    // FIXME. This branch contain bug
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

    if ((v & u128.fromU64(1 << 53)).toBool()) {
      v = u128.shr(v, 1);
      ++e;
    }
  } else {
    v = u128.shl(v, 53 - sd);
  }

  var w: u64 = u128.shr(v, 32).lo & 0x000FFFFF;
  var u: u64 = <u64>(((e + 1023) << 20) | w) << 32; // high part
  return reinterpret<f64>(u | (v.lo & 0xFFFFFFFF));
}

@global @inline
export function __clz128(lo: u64, hi: u64): i32 {
  // return <i32>(hi ? clz(hi) : clz(lo) + 64);
  var mask: i64 = -(<i64>(hi == 0));
  return <i32>clz((hi & ~mask) | (lo & mask)) + (<i32>mask & 64);
}

@global @inline
export function __ctz128(lo: u64, hi: u64): i32 {
  // return <i32>(lo ? ctz(lo) : ctz(hi) + 64);
  var mask: i64 = ~-(<i64>(lo == 0));
  return <i32>ctz((hi & ~mask) | (lo & mask)) + (<i32>mask & 64);
}

@global
export function __udivmod128(alo: u64, ahi: u64, blo: u64, bhi: u64): void {
  var bzn = __clz128(blo, bhi); // N
  if (bzn == 128)
    unreachable(); // div by zero

  var azn = __clz128(alo, ahi); // M
  var btz = __ctz128(blo, bhi); // N

  if (!(alo | ahi)) {
    __divmod_quot_lo =
    __divmod_quot_hi =
    __divmod_rem_lo  =
    __divmod_rem_hi  = 0;
    return;
  }

  if (bzn == 127) {
    __divmod_quot_lo = alo;
    __divmod_quot_hi = ahi;
    __divmod_rem_lo  =
    __divmod_rem_hi  = 0;
    return;
  }

  if (btz + bzn == 127) {
    // TODO
    // __divmod_quot = a >> btz
    // b++
    // __divmod_rem = a & b
    return;
  }

  if (!(ahi | bhi)) {
    __divmod_quot_hi =
    __divmod_rem_hi  = 0;

    // if `b.lo` is power of two
    if (!(blo & (blo - 1))) {
      __divmod_quot_lo = alo >> btz;
      __divmod_rem_lo  = 0;
    } else {
      __divmod_quot_lo = alo / blo;
      __divmod_rem_lo  = alo - __divmod_quot_lo * blo;
    }
    return;
  }

  // if `b.hi` is power of two
  if (!(bhi & (bhi - 1))) {
    __divmod_rem_hi =
    __divmod_rem_lo = 0;

    // TODO

    return;
  }

  var diff: i64 = ahi - bhi;
  var cmp = <i32>(diff != 0 ? diff : alo - blo); // TODO optimize this

  if (cmp < 0) {
    __divmod_quot_lo =
    __divmod_quot_hi = 0;
    __divmod_rem_lo  = alo;
    __divmod_rem_hi  = ahi;
    return;
  } else if (cmp == 0) {
    __divmod_quot_lo = 1;
    __divmod_quot_hi =
    __divmod_rem_lo  =
    __divmod_rem_hi  = 0;
    return;
  }

  if (bzn - azn <= 5) {
    // TODO
    // fast path
  } else {
    // TODO
    // __udivmod128core
  }
}
