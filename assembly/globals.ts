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

// used for returning low and high part of __mulq64, __multi3 etc
export var __res128_lo: u64 = 0;
export var __res128_hi: u64 = 0;

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
export function __umulh64(u: u64, v: u64): u64 {
  var u0 = u & 0xFFFFFFFF;
  var v0 = v & 0xFFFFFFFF;

  var u1 = u >> 32;
  var v1 = v >> 32;

  var l = u0 * v0;
  var t = u1 * v0 + (l >> 32);
  var w = u0 * v1 + (t & 0xFFFFFFFF);

  t >>= 32;
  w >>= 32;

  return u1 * v1 + t + w;
}

@global
export function __umulq64(_res: usize, u: u64, v: u64): void {
  var u1, v1, w0, w1, t;

  u1 = u & 0xFFFFFFFF;
  v1 = v & 0xFFFFFFFF;

  u >>= 32;
  v >>= 32;

  t  = u1 * v1;
  w0 = t & 0xFFFFFFFF;
  t  = u * v1 + (t >> 32);
  w1 = t >> 32;
  t  = u1 * v + (t & 0xFFFFFFFF);

  __res128_lo = (t << 32) + w0;
  __res128_hi = u * v + w1 + (t >> 32);
}

@global
export function __multi3(_res: usize, al: u64, ah: u64, bl: u64, bh: u64): void {
  var u = al, v = bl;
  var w: u64, k: u64;

  var u1 = u & 0xFFFFFFFF;
  var v1 = v & 0xFFFFFFFF;
  var t  = u1 * v1;
  var w1 = t & 0xFFFFFFFF;

  u = u >> 32;
  t = u * v1 + (t >> 32);
  k = t & 0xFFFFFFFF;
  w = t >> 32;
  v = v >> 32;
  t = u1 * v + k;

  var lo  = w1 + (t << 32);
  var hi  = u  * v + w;
      hi += ah * bl;
      hi += al * bh;
      hi += t >> 32;

  __res128_lo = lo;
  __res128_hi = hi;
}

export var __float_u128_lo: u64 = 0;
export var __float_u128_hi: u64 = 0;

@global
export function __floatuntfdi(value: f64): void {
  var u = reinterpret<u64>(value);

  // if (value < -1.7014118346046e38) { // -(2^127-1)
  if (value < reinterpret<f64>(0xC7F0000000000000)) { // -(2^128-1)
    // overflow negative
    __float_u128_lo = 0;
    // __float_u128_hi = <u64>-1; // for i128
    __float_u128_hi = 0;
    // } else if (value < -9.2233720368547e18) { // -2^63-1 // for i128
  } else if (value < reinterpret<f64>(0xC3F0000000000000)) { // // -(2^64-1)
    let lo: u64, hi: u64, m: u64;

    m = (u & 0x000FFFFFFFFFFFFF) | (1 << 52);
    u = (u & 0x7FFFFFFFFFFFFFFF) >> 52;

    u -= 1075;
    if (u > 64) {
      lo = 0;
      hi = m << (u - 64);
    } else {
      lo = m << u;
      hi = m >> (64 - u);
    }
    __float_u128_lo = ~lo;
    __float_u128_hi = ~hi;
    // } else if (value < 9.2233720368547e18) { // 2^63-1 // for i128
  } else if (value < reinterpret<f64>(0x43F0000000000000)) { // 2^64-1
    // fit in a u64
    __float_u128_lo = <u64>value;
    // __float_u128_hi = (value < 0) ? -1 : 0; // for int
    __float_u128_hi = 0;
    // } else if (value < 1.7014118346046e38) {
  } else if (value < reinterpret<f64>(0x47F0000000000000)) { // 2^128-1
    let lo: u64, hi: u64, m: u64;

    m = (u & 0x000FFFFFFFFFFFFF) | (1 << 52);
    u = (u & 0x7FFFFFFFFFFFFFFF) >> 52;
    u -= 1075;
    if (u > 64) {
      lo = 0;
      hi = m << (u - 64);
    } else {
      lo = m << u;
      hi = m >> (64 - u);
    }
    __float_u128_lo = lo;
    __float_u128_hi = hi;
  } else {
    // overflow positive
    __float_u128_lo = <u64>-1;
    __float_u128_hi = <u64>-1; // 0x7FFFFFFFFFFFFFFF for i128
  }
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
      let dlo = alo / blo;
      __divmod_quot_lo = dlo
      __divmod_rem_lo  = alo - dlo * blo;
    }
    return;
  }

  // if b.lo == 0 and `b.hi` is power of two
  if (!blo && !(bhi & (bhi - 1))) {
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

@global @inline
export function __udivmod128_10(_qlo: u64, _qhi: u64, _rlo: u64, _rhi: u64, lo: u64, hi: u64): void {
  if (!hi) {
    if (lo < 10) {
      __divmod_quot_lo =
      __divmod_quot_hi =
      __divmod_rem_lo  =
      __divmod_rem_hi  = 0;
      return;
    }
    let qlo = lo / 10;
    __divmod_quot_lo = qlo;
    __divmod_quot_hi = 0;
    __divmod_rem_lo  = lo - qlo * 10;
    __divmod_rem_hi  = 0;
    return;
  }

  var q: u128, r: u128;
  var n = value.clone();

  q  = n >> 1;
  q += n >> 2;
  q += q >> 4;
  q += q >> 8;
  q += q >> 16;
  q += q >> 32;
  q += u128.fromU64(q.hi); // q >> 64
  q >>= 3;
  r = n - (((q << 2) + q) << 1);
  n = q + u128.fromBool(r.lo > 9);

  __divmod_quot_lo = n.lo;
  __divmod_quot_hi = n.hi;
  __divmod_rem_lo  = r.lo;
  __divmod_rem_hi  = r.hi;
}
