import { u128 } from './integer/u128';
import { u256 } from './integer/u256';

// used for returning quotient and reminder from __divmod128
@lazy export var __divmod_quot_hi: u64 = 0;
@lazy export var __divmod_rem_lo:  u64 = 0;
@lazy export var __divmod_rem_hi:  u64 = 0;

// used for returning low and high part of __mulq64, __multi3 etc
@lazy export var __res128_hi: u64 = 0;

/**
 * Convert 128-bit unsigned integer to 64-bit float
 * @param  lo lower  64-bit part of unsigned 128-bit integer
 * @param  hi higher 64-bit part of unsigned 128-bit integer
 * @return    64-bit float result
 */
// @ts-ignore: decorator
@global
export function __floatuntidf(lo: u64, hi: u64): f64 {
  // __floatuntidf ported from LLVM sources
  if (!(lo | hi)) return 0.0;

  var v  = new u128(lo, hi);
  var sd = 128 - __clz128(lo, hi);
  var e  = sd - 1;

  if (sd > 53) {
    if (sd != 55) {
      if (sd == 54) {
        v = u128.shl(v, 1);
      } else {
        v = u128.or(
          u128.shr(v, sd - 55),
          u128.fromBool(u128.and(v, u128.shr(u128.Max, 128 + 55 - sd)).toBool())
        );
      }
    }

    v.lo |= (v.lo & 4) >> 2;
    v.preInc();

    v = u128.shr(v, 2);

    if (v.lo & (1 << 53)) {
      v = u128.shr(v, 1);
      ++e;
    }

  } else {
    v = u128.shl(v, 53 - sd);
  }

  var w: u64 = u128.shr(v, 32).lo & 0x000FFFFF;
  var u: u64 = <u64>(((e + 1023) << 20) | w) << 32;
  return reinterpret<f64>(u | (v.lo & 0xFFFFFFFF));
}

// @ts-ignore: decorator
@global
export function __umulh64(a: u64, b: u64): u64 {
  var u = a & 0xFFFFFFFF; a >>= 32;
  var v = b & 0xFFFFFFFF; b >>= 32;

  var uv = u * v;
  var uv = a * v + (uv >> 32);
  var w0 = u * b + (uv & 0xFFFFFFFF);
  return a * b + (uv >> 32) + (w0 >> 32);
}

// @ts-ignore: decorator
@global
export function __umulq64(a: u64, b: u64): u64 {
  var u = a & 0xFFFFFFFF; a >>= 32;
  var v = b & 0xFFFFFFFF; b >>= 32;

  var uv = u * v;
  var w0 = uv & 0xFFFFFFFF;
      uv = a * v + (uv >> 32);
  var w1 = uv >> 32;
      uv = u * b + (uv & 0xFFFFFFFF);

  __res128_hi = a * b + w1 + (uv >> 32);
  return (uv << 32) | w0;
}

// @ts-ignore: decorator
@global
export function __multi3(al: u64, ah: u64, bl: u64, bh: u64): u64 {
  var u = al, v = bl;
  var w: u64, k: u64;

  var u1 = u & 0xFFFFFFFF; u >>= 32;
  var v1 = v & 0xFFFFFFFF; v >>= 32;
  var t  = u1 * v1;
  var w1 = t & 0xFFFFFFFF;

  t = u * v1 + (t >> 32);
  k = t & 0xFFFFFFFF;
  w = t >> 32;
  t = u1 * v + k;

  var lo  = (t << 32) | w1;
  var hi  = u  * v + w;
      hi += ah * bl;
      hi += al * bh;
      hi += t >> 32;

  __res128_hi = hi;
  return lo;
}

// @ts-ignore: decorator
@global
export function __floatuntfdi(value: f64): u64 {
  var u = reinterpret<u64>(value);

  // if (value < -1.7014118346046e38) { // -(2^127-1)
  if (value < reinterpret<f64>(0xC7F0000000000000)) { // -(2^128-1)
    // __float_u128_hi = <u64>-1; // for i128
    __res128_hi = 0;
    // overflow negative
    return 0;
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
    __res128_hi = ~hi;
    return ~lo;
    // } else if (value < 9.2233720368547e18) { // 2^63-1 // for i128
  } else if (value < reinterpret<f64>(0x43F0000000000000)) { // 2^64-1
    // __float_u128_hi = (value < 0) ? -1 : 0; // for int
    __res128_hi = 0;
    // fit in a u64
    return <u64>value;
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
    __res128_hi = hi;
    return lo;
  } else {
    // overflow positive
    __res128_hi = <u64>-1; // 0x7FFFFFFFFFFFFFFF for i128
    return <u64>-1;
  }
}

// @ts-ignore: decorator
@global @inline
export function __clz128(lo: u64, hi: u64): i32 {
  var mask: u64 = <i64>(hi ^ (hi - 1)) >> 63;
  return <i32>clz((hi & ~mask) | (lo & mask)) + (<i32>mask & 64);
}

// @ts-ignore: decorator
@global @inline
export function __ctz128(lo: u64, hi: u64): i32 {
  var mask: u64 = <i64>(lo ^ (lo - 1)) >> 63;
  return <i32>ctz((hi & mask) | (lo & ~mask)) + (<i32>mask & 64);
}

// @ts-ignore: decorator
@global
export function __udivmod128(alo: u64, ahi: u64, blo: u64, bhi: u64): u64 {
  var bzn = __clz128(blo, bhi); // N

  // b == 0
  if (bzn == 128) {
    throw new RangeError("Division by zero"); // division by zero
  }

  // var azn = __clz128(alo, ahi); // M
  var btz = __ctz128(blo, bhi); // N

  // a == 0
  if (!(alo | ahi)) {
    __divmod_quot_hi = 0;
    __divmod_rem_lo  = 0;
    __divmod_rem_hi  = 0;
    return 0;
  }

  // a / 1
  if (bzn == 127) {
    __divmod_quot_hi = ahi;
    __divmod_rem_lo  = 0;
    __divmod_rem_hi  = 0;
    return alo;
  }

  // a == b
  if (alo == blo && ahi == bhi) {
    __divmod_quot_hi = 0;
    __divmod_rem_lo  = 0;
    __divmod_rem_hi  = 0;
    return 1;
  }

  // if (btz + bzn == 127) {
  //   // TODO
  //   // __divmod_quot = a >> btz
  //   // b++
  //   // __divmod_rem = a & b
  //   return;
  // }

  if (!(ahi | bhi)) {
    __divmod_quot_hi = 0;
    __divmod_rem_hi  = 0;
    // if `b.lo` is power of two
    if (!(blo & (blo - 1))) {
      __divmod_rem_lo = 0;
      return alo >> btz;
    } else {
      let dlo = alo / blo;
      __divmod_rem_lo = alo - dlo * blo;
      return dlo;
    }
  }

  // if b.lo == 0 and `b.hi` is power of two
  // if (!blo && !(bhi & (bhi - 1))) {
  //   __divmod_rem = 0;

  //   // TODO

  //   return 0;
  // }

  // var diff: i64 = ahi - bhi;
  // var cmp = <i32>(diff != 0 ? diff : alo - blo); // TODO optimize this

  // if (cmp <= 0) {
  //   __divmod_quot_hi = 0;
  //   __divmod_rem     = 0;
  //   return u64(cmp == 0);
  // }

  // if (bzn - azn <= 5) {
  //   // TODO
  //   // fast path
  //   return __udivmod128core(alo, ahi, blo, bhi);
  // }
  return __udivmod128core(alo, ahi, blo, bhi);
}

function __udivmod128core(alo: u64, ahi: u64, blo: u64, bhi: u64): u64 {
  var a = new u128(alo, ahi);
  var b = new u128(blo, bhi);
  // get leading zeros for left alignment
  var alz = __clz128(alo, ahi);
  var blz = __clz128(blo, bhi);
  var off = blz - alz;
  var nb  = b << off;
  var q = u128.Zero;
  var n = a.clone();

  // create a mask with the length of b
  var mask = u128.One;
  mask <<= 128 - blz;
  --mask;
  mask <<= off;

  var i = 0;
  while (n >= b) {
    ++i;
    q <<= 1;
    if ((n & mask) >= nb) {
      ++q;
      n -= nb;
    }

    mask |= mask >> 1;
    nb >>= 1;
  }
  q <<= (blz - alz - i + 1);

  __divmod_quot_hi = q.hi;
  __divmod_rem_lo  = n.lo;
  __divmod_rem_hi  = n.hi;
  return q.lo;
}

// @ts-ignore: decorator
@global
export function __udivmod128_10(lo: u64, hi: u64): u64 {
  if (!hi) {
    __divmod_quot_hi = 0;
    if (lo < 10) {
      __divmod_rem_lo = 0;
      __divmod_rem_hi = 0;
      return 0;
    } else {
      let qlo = lo / 10;
      __divmod_rem_lo = lo - qlo * 10;
      __divmod_rem_hi = 0;
      return qlo;
    }
  }

  var q: u128, r: u128;
  var n = new u128(lo, hi);

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

  __divmod_quot_hi = n.hi;
  __divmod_rem_lo  = r.lo;
  __divmod_rem_hi  = r.hi;
  return n.lo;
}

@lazy var __carry: u64 = 0;

@inline
function dumb_carry(x: u64, y: u64): u64 {
	var t = x + y;
	__carry = (t < x) as u64;
	return t;
}

@inline
function add_carry(x: u64, y: u64, c: u64): u64 {
	var t = x + y;
	var r = t + c;
	__carry = ((t < x) || (r < t)) as u64;
	return r;
}

@global
export function __umulq128(xl: u64, xh: u64, yl: u64, yh: u64): u256 {
	var al = __umulq64(xh, yh);
	var ah = __res128_hi;
	var bl = __umulq64(xh, yl);
	var bh = __res128_hi;
	var cl = __umulq64(xl, yh);
	var ch = __res128_hi;
	var dl = __umulq64(xl, yl);
	var dh = __res128_hi;
	var r4 = dl;

	let carry1: u64, carry2: u64;

	var r3 = dumb_carry(bl, cl)
	carry1 = __carry;
	r3 = dumb_carry(r3, dh)
	carry2 = __carry;
	var t1 = add_carry(bh, ch, carry1)
	carry1 = __carry;
	var r2 = add_carry(t1, al, carry2)
	carry2 = __carry;

	var r1 = ah + carry1 + carry2
	return new u256(r4, r3, r2, r1)
}

@inline
function __256ge(x1: u64, x2: u64, x3: u64, x4: u64, y1: u64, y2: u64, y3: u64, y4: u64): bool {
	if (x1 == y1) {
		if (x2 == y2) {
			return x3 == y3 ? x4 >= y4 : x3 > y3;
		} else {
			return x2 > y2;
		}
	} else {
		return x1 > y1;
	}
}

@inline
function __512ge(x1: u64, x2: u64, x3: u64, x4: u64, x5: u64, x6: u64, x7: u64, x8: u64, 
	y1: u64, y2: u64, y3: u64, y4: u64, y5: u64, y6: u64, y7: u64, y8: u64): bool {
	
	if (x1 == y1) {
		if (x2 == y2) {
			if (x3 == y3) {
				return x4 == y4 ? __256ge(x5, x6, x7, x8, y5, y6, y7, y8) : x4 > y4;
			} else {
				return x3 > y3;
			}
		} else {
			return x2 > y2;
		}
	} else {
		return x1 > y1;
	}
}

@global
export function __mulmod256(xl1: u64, xl2: u64, xh1: u64, xh2: u64, yl1: u64, yl2: u64, yh1: u64, yh2: u64, ml1: u64, ml2: u64, mh1: u64, mh2: u64): u256 {
	if (__clz128(mh2, mh1) + __clz128(ml2, ml1) == 256) {
		throw new RangeError("Division by zero"); // division by zero
	}

	var a = __umulq128(xh1, xh2, yh1, yh2);
	var b = __umulq128(xh1, xh2, yl1, yl2);
	var c = __umulq128(xl1, xl2, yh1, yh2);
	var d = __umulq128(xl1, xl2, yl1, yl2);
	var r8 = d.lo1;
	var r7 = d.lo2;

	let carry1: u64, carry2: u64;

	var r6 = dumb_carry(b.lo1, c.lo1);
	carry1 = __carry;
	r6 = dumb_carry(r6, d.hi1);
	carry2 = __carry;

	var r5 = add_carry(b.lo2, c.lo2, carry1);
	carry1 = __carry;
	r5 = add_carry(r5, d.hi2, carry2);
	carry2 = __carry;
	
	var r4 = add_carry(a.lo1, b.hi1, carry1);
	carry1 = __carry;
	r4 = add_carry(r4, c.hi1, carry2);
	carry2 = __carry;

	var r3 = add_carry(a.lo2, b.hi2, carry1);
	carry1 = __carry;
	r3 = add_carry(r3, c.hi2, carry2);
	carry2 = __carry;

	var r2 = add_carry(a.hi1, carry1, carry2);
	carry1 = __carry;

	var r1 = a.hi2 + carry1;

	let m1: u64 = 0;
	let m2: u64 = 0;
	let m3: u64 = 0;
	let m4: u64 = 0;
	let m5: u64 = mh2;
	let m6: u64 = mh1;
	let m7: u64 = ml2;
	let m8: u64 = ml1;

	let my1: u64 = 0;
	let my2: u64 = 0;
	let my3: u64 = 0;
	let my4: u64 = 0;
	let my5: u64 = 0;
	let my6: u64 = 0;
	let my7: u64 = 0;
	let my8: u64 = 1;

	while(true) {
		if (
			clz(m1) == 0 || __512ge(m1, m2, m3, m4, m5, m6, m7, m8, r1, r2, r3, r4, r5, r6, r7, r8)
		) {
			break;
		}

		m1 = (m1 << 1) | (m2 >> 63);
		m2 = (m2 << 1) | (m3 >> 63);
		m3 = (m3 << 1) | (m4 >> 63);
		m4 = (m4 << 1) | (m5 >> 63);
		m5 = (m5 << 1) | (m6 >> 63);
		m6 = (m6 << 1) | (m7 >> 63);
		m7 = (m7 << 1) | (m8 >> 63);
		m8 = m8 << 1;

		my1 = (my1 << 1) | (my2 >> 63);
		my2 = (my2 << 1) | (my3 >> 63);
		my3 = (my3 << 1) | (my4 >> 63);
		my4 = (my4 << 1) | (my5 >> 63);
		my5 = (my5 << 1) | (my6 >> 63);
		my6 = (my6 << 1) | (my7 >> 63);
		my7 = (my7 << 1) | (my8 >> 63);
		my8 = my8 << 1;
	}

	while (my1 | my2 | my3 | my4 | my5 | my6 | my7 | my8) {
		if (__512ge(r1, r2, r3, r4, r5, r6, r7, r8, m1, m2, m3, m4, m5, m6, m7, m8)) {
			r8 = add_carry(r8, ~m8, 1)
			r7 = add_carry(r7, ~m7, __carry)
			r6 = add_carry(r6, ~m6, __carry)
			r5 = add_carry(r5, ~m5, __carry)
			r4 = add_carry(r4, ~m4, __carry)
			r3 = add_carry(r3, ~m3, __carry)
			r2 = add_carry(r2, ~m2, __carry)
			r1 = add_carry(r1, ~m1, __carry)
		}

		m8 = (m8 >> 1) | (m7 << 63);
		m7 = (m7 >> 1) | (m6 << 63);
		m6 = (m6 >> 1) | (m5 << 63);
		m5 = (m5 >> 1) | (m4 << 63);
		m4 = (m4 >> 1) | (m3 << 63);
		m3 = (m3 >> 1) | (m2 << 63);
		m2 = (m2 >> 1) | (m1 << 63);
		m1 = m1 >> 1;

		my8 = (my8 >> 1) | (my7 << 63);
		my7 = (my7 >> 1) | (my6 << 63);
		my6 = (my6 >> 1) | (my5 << 63);
		my5 = (my5 >> 1) | (my4 << 63);
		my4 = (my4 >> 1) | (my3 << 63);
		my3 = (my3 >> 1) | (my2 << 63);
		my2 = (my2 >> 1) | (my1 << 63);
		my1 = my1 >> 1;
	}

	return new u256(r8, r7, r6, r5);
}

@global
export function __divs256(xl1: u64, xl2: u64, xh1: u64, xh2: u64, yl1: u64, yl2: u64, yh1: u64, yh2: u64): u256 {
	if (__clz128(yh2, yh1) + __clz128(yl2, yl1) == 256) {
		throw new RangeError("Division by zero"); // division by zero
	}
	
	let r1: u64 = 0;
	let r2: u64 = 0;
	let r3: u64 = 0;
	let r4: u64 = 0;

	let m1: u64 = 0;
	let m2: u64 = 0;
	let m3: u64 = 0;
	let m4: u64 = 1;

	while(true) {
		if (
			clz(yh2) == 0 || __256ge(yh2, yh1, yl2, yl1, xh2, xh1, xl2, xl1)
		) {
			break;
		}

		yh2 = (yh2 << 1) | (yh1 >> 63);
		yh1 = (yh1 << 1) | (yl2 >> 63);
		yl2 = (yl2 << 1) | (yl1 >> 63);
		yl1 = yl1 << 1;

		m1 = (m1 << 1) | (m2 >> 63);
		m2 = (m2 << 1) | (m3 >> 63);
		m3 = (m3 << 1) | (m4 >> 63);
		m4 = m4 << 1;
	}

	while (m1 | m2 | m3 | m4) {
		if (__256ge(xh2, xh1, xl2, xl1, yh2, yh1, yl2, yl1)) {
			xh2 = add_carry(xh2, ~yh2, 1)
			xh1 = add_carry(xh1, ~yh1, __carry)
			xl2 = add_carry(xl2, ~yl2, __carry)
			xl1 = add_carry(xl1, ~yl1, __carry)
			r4 = add_carry(r4, m4, 0)
			r3 = add_carry(r3, m3, __carry)
			r2 = add_carry(r2, m2, __carry)
			r1 = add_carry(r1, m1, __carry)
		}

		yl1 = (yl1 >> 1) | (yl2 << 63);
		yl2 = (yl2 >> 1) | (yh1 << 63);
		yh1 = (yh1 >> 1) | (yh2 << 63);
		yh2 = yh2 >> 1;

		m4 = (m4 >> 1) | (m3 << 63);
		m3 = (m3 >> 1) | (m2 << 63);
		m2 = (m2 >> 1) | (m1 << 63);
		m1 = m1 >> 1;
	}

	return new u256(r4, r3, r2, r1);
}

@global
export function __umuls256(xl1: u64, xl2: u64, xh1: u64, xh2: u64, yl1: u64, yl2: u64, yh1: u64, yh2: u64): u256 {
	var b = __umulq128(xl1, xl2, yh1, yh2);
	var c = __umulq128(xh1, xh2, yl1, yl2);
	var d = __umulq128(xl1, xl2, yl1, yl2);
	var r4 = d.lo1;
	var r3 = d.lo2;
	var r2 = add_carry(b.lo1, c.lo1, 0);
	var r1 = add_carry(b.lo2, c.lo2, __carry);
	r2 = add_carry(r2, d.hi1, 0);
	r1 = add_carry(r1, d.hi2, __carry);
	return new u256(r4, r3, r2, r1);
}