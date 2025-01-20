import { i128 } from "../integer/i128";
import { u256 } from "../integer/u256";

describe("Known Issues / Demonstrations of Potential Bugs", () => {

  // --------------------------------------------------------------------------
  // 1. i128 Add/Sub with Negative Operands
  //    The library currently does things like:
  //      lo = a.lo + b.lo - (b.hi >>> 63)
  //    which is not a proper two-limb addition for signed i128.
  // --------------------------------------------------------------------------
  describe("i128 Add and Sub with Negative Numbers", () => {
    it("Should add +1 and -1 correctly (should be 0)", () => {
      // If the library were correct, i128(1) + i128(-1) == 0.
      // But the current logic incorrectly does: 1 + (b.lo) - (b.hi>>>63).
      // That yields something else for negative b.hi.
      let a = i128.fromI64(1);
      let b = i128.fromI64(-1);

      let sum = a + b;
      // We *want* sum == 0, but the current code incorrectly yields another value.
      expect(sum.isZero()).toBe(true, "i128(1) + i128(-1) should be zero");
    });

    it("Should add two negative numbers", () => {
      // Example: -2 + -3 => -5
      // Let's see what the library does. We expect -5, i.e. lo=... hi=signBit= -1.
      let a = i128.fromI64(-2);
      let b = i128.fromI64(-3);

      let sum = a + b;
      // sum should be -5
      let expected = i128.fromI64(-5);
      expect(sum.lo).toBe(
        expected.lo,
        "low 64 bits should be 2's complement representation of -5",
      );
      expect(sum.hi).toBe(
        expected.hi,
        "high 64 bits should sign-extend properly for -5",
      );
    });

    it("Should subtract negative from positive", () => {
      // Example: 5 - (-1) => 6
      // The current sub logic also incorrectly manipulates hi bits.
      let a = i128.fromI64(5);
      let b = i128.fromI64(-1);

      let diff = a - b;
      let expected = i128.fromI64(6);
      expect(diff.lo).toBe(expected.lo, "Should be 6 in the low part");
      expect(diff.hi).toBe(expected.hi, "Should be 6 in the high part (no sign overflow)");
    });

    it("Should handle -1 - 1 = -2 properly", () => {
      let a = i128.fromI64(-1);
      let b = i128.fromI64(1);

      let diff = a - b;
      let expected = i128.fromI64(-2);
      expect(diff.lo).toBe(expected.lo, "Should be the 2's complement of 2 in low bits");
      expect(diff.hi).toBe(expected.hi, "Should sign-extend the negative result");
    });
  });

  // --------------------------------------------------------------------------
  // 2. u256 Add/Sub Multiword Carry
  //    The bitwise formula used doesn't consistently incorporate the carry-in.
  //    That can cause corner-case failures for multi-limb additions.
  // --------------------------------------------------------------------------
  describe("u256 Multi-limb Add/Sub Corner Cases (Carry/Borrow)", () => {
    it("Should carry when adding multiple limbs that cascade", () => {
      // Construct an example that forces a cascade of carries.
      // We'll choose each limb to be near the maximum so that adding 1 cascades through.
      // e.g. 0xFFFF_FFFF_FFFF_FFFF in each limb.

      let a = new u256(
        0xFFFFFFFFFFFFFFFF,
        0xFFFFFFFFFFFFFFFF,
        0xFFFFFFFFFFFFFFFF,
        0xFFFFFFFFFFFFFFFE, // slightly less than max so the sum doesn't wrap all the way
      );
      let one = u256.One;

      // The correct sum should be:
      //   lo1 = 0xFFFFFFFFFFFFFFFF + 1 = 0x0000000000000000 with carry=1
      //   lo2 = 0xFFFFFFFFFFFFFFFF + 0 + carry=1 => 0x0000000000000000 with carry=1
      //   hi1 = 0xFFFFFFFFFFFFFFFF + 0 + carry=1 => 0x0000000000000000 with carry=1
      //   hi2 = 0xFFFFFFFFFFFFFFFE + 0 + carry=1 => 0xFFFFFFFFFFFFFFFF with carry=0
      let correct = new u256(
        0x0000000000000000,
        0x0000000000000000,
        0x0000000000000000,
        0xFFFFFFFFFFFFFFFF,
      );

      let sum = a + one;
      expect(sum.lo1).toBe(
        correct.lo1,
        "Incorrect lo1 if multi-limb carry is mishandled",
      );
      expect(sum.lo2).toBe(
        correct.lo2,
        "Incorrect lo2 if second-limb carry is mishandled",
      );
      expect(sum.hi1).toBe(
        correct.hi1,
        "Incorrect hi1 if third-limb carry is mishandled",
      );
      expect(sum.hi2).toBe(
        correct.hi2,
        "Incorrect hi2 if final carry is mishandled",
      );
    });

    it("Should borrow when subtracting across multiple limbs", () => {
      // Borrow across 4 limbs:
      // E.g. a = [0x0000_0000_0000_0000, 0, 0, 1]
      // minus b = [0x0000_0000_0000_0001, 0, 0, 0]
      // The correct result is hi2=0, hi1=0, lo2=0, lo1= (2^64) - 1 => 0xffffffffffffffff
      // because we must borrow from the top limb (which was 1).
      let a = new u256(0, 0, 0, 1);
      let b = new u256(1, 0, 0, 0);

      // The correct difference if a=2^192 and b=1:
      let correct = new u256(
        0xFFFFFFFFFFFFFFFF,
        0xFFFFFFFFFFFFFFFF,
        0xFFFFFFFFFFFFFFFF,
        0 // hi2
      );

      let diff = a - b;
      expect(diff.lo1).toBe(correct.lo1, "Should borrow into lo1");
      expect(diff.lo2).toBe(correct.lo2);
      expect(diff.hi1).toBe(correct.hi1);
      expect(diff.hi2).toBe(correct.hi2);
    });
  });

  // --------------------------------------------------------------------------
  // 3. Float -> BigInt Conversions
  //    fromF64/fromF32 only do <u64>value, losing bits above 2^53.
  // --------------------------------------------------------------------------
  describe("Float to BigInt Conversions (Truncation Above 2^53)", () => {
    it("Should correctly convert 2^54 from f64 (should be 18014398509481984)", () => {
      // 2^54 = 18014398509481984
      // The library incorrectly just does <u64>value, but f64 can't exactly represent 2^54 as an integer.
      // Even if it did, the library doesn't do the high-limb logic to place bits above 2^53.
      let val: f64 = Math.pow(2, 54); // 2^54
      let u = u256.fromF64(val);

      // If the library were perfect, you'd get exactly 2^54 in the integer (lo1=18014398509481984).
      // But currently, it is off by 1 or truncated for large powers. Let's see what it does:
      expect(u.toString()).toBe(
        "18014398509481984",
        "Should parse 2^54 exactly, but likely fails now",
      );
    });

    it("Should correctly convert a huge f64 above 2^53", () => {
      // e.g. 1.2345e20 ~ 123450000000000000000 => way bigger than 2^53
      // The library will lose high bits and not represent the full magnitude.
      let bigDouble: f64 = 1.2345e20;
      let asU256 = u256.fromF64(bigDouble);
      // Just checking that the result is obviously smaller than the real integer.
      // A correct big-int conversion would produce a ~66-bit or so integer here.
      // Instead, we get only ~53 bits of data.
      expect(asU256.toString().length).toBeGreaterThanOrEqual(
        15,
        "It might incorrectly have fewer digits if truncated too severely",
      );
    });
  });

  // --------------------------------------------------------------------------
  // 4. Confirm i128 only has 64-bit partial logic in fromI256/fromU256
  //    (This is not necessarily a bug if it's intended to truncate, but it
  //    *can* be a bug if you expected saturate or sign extension, etc.)
  // --------------------------------------------------------------------------
  describe("i128 fromU256 / fromI256 truncation check", () => {
    it("Should show that i128.fromU256 truncates top 128 bits", () => {
      // We'll pick a u256 bigger than 2^128-1:
      // e.g. 0xffffffffffffffff ffffffffffffffff 0000000000000000 0000000000000001
      let bigVal = new u256(
        0x0000000000000001,
        0x0000000000000000,
        0xFFFFFFFFFFFFFFFF,
        0xFFFFFFFFFFFFFFFF,
      );

      // i128.fromU256 just picks lo1, lo2 => discarding hi1, hi2.
      let truncated = i128.fromU256(bigVal);

      // The top half is lost. Check that truncated result is effectively "1" in the low 128 bits:
      // lo1 = 1, hi=0
      expect(truncated.lo).toBe(
        1,
        "Truncation means only the lowest 64 bits are 1",
      );
      expect(truncated.hi).toBe(
        0,
        "Top 64 bits within i128 are zero, ignoring the real top 128 bits of the original",
      );
    });

    it("Should show sign might be wrong if lo2 top bit is set", () => {
      // e.g. Suppose the lower 128 bits have their top bit set => i128 sees it as negative.
      // But fromU256 has no sign logic, it just reinterprets lo2 as an i64.
      let trickyVal = new u256(
        0, // lo1
        0x8000000000000000, // lo2 has top bit set
        0, // hi1
        0, // hi2
      );

      let asI128 = i128.fromU256(trickyVal);
      // That means asI128 is negative because hi = <i64> 0x8000000000000000 => sign bit set.
      // So, from the library's perspective, we "randomly" get a negative i128 even though
      // the original u256 is definitely positive.
      expect(asI128.isNeg()).toBe(
        true,
        "Should appear negative due to top bit in the lower 128 bits",
      );
    });
  });

  // --------------------------------------------------------------------------
  // 5. Potential Division Edge Cases in u256
  //    (Depends on correctness of sub. If sub fails for certain multi-limb
  //    borrows, the division steps could also fail.)
  // --------------------------------------------------------------------------
  describe("u256 Division Edge Cases", () => {
    it("Should produce an incorrect quotient if sub is wrong in an intermediate step", () => {
      // We contrive a case that definitely triggers multi-limb borrow inside the shift-sub routine.
      // For instance, dividing a big number by a slightly smaller big number:

      let numerator = new u256(
        0xFFFFFFFFFFFFFFFF,
        0x0000000000000000,
        0xFFFFFFFFFFFFFFFF,
        0x7FFFFFFFFFFFFFFF, // a large but not full
      );
      let denominator = new u256(
        0xFFFFFFFFFFFFFFFF,
        0x0000000000000000,
        0xFFFFFFFFFFFFFFFF,
        0x3FFFFFFFFFFFFFFF,
      );

      // The correct quotient is roughly ~2 (since hi2 is 7FFF... vs 3FFF...).
      // Let's see if the sub logic leads to an off-by-one or something else.
      let quotient = numerator / denominator;

      // We *want* it to be about 2:
      expect(quotient.toU64()).toBe(
        2,
        "In standard big-int division, the quotient should be 2 (roughly).",
      );
    });
  });
});
