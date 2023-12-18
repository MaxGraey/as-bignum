/**
 * Safely shifts a 64-bit unsigned integer to the right.
 * Throws an error for negative shifts and returns 0 for shifts >= 64.
 *
 * @param value - The 64-bit unsigned integer to be shifted.
 * @param shift - The number of positions to shift to the right.
 * @returns The shifted value.
 */
export function u64SafeShr(value: u64, shift: i32): u64 {
  if (shift < 0) {
    throw new RangeError("Negative shift");
  }

  if (shift >= 64) {
    return 0;
  }

  return value >> shift;
}

/**
 * Safely shifts a 64-bit unsigned integer to the left.
 * Throws an error for negative shifts and returns 0 for shifts >= 64.
 *
 * @param value - The 64-bit unsigned integer to be shifted.
 * @param shift - The number of positions to shift to the left.
 * @returns The shifted value.
 */
export function u64SafeShl(value: u64, shift: i32): u64 {
  if (shift < 0) {
    throw new RangeError("Negative shift");
  }

  if (shift >= 64) {
    return 0;
  }

  return value << shift;
}

/**
 * Divides a 128-bit number by a 64-bit divisor.
 * 
 * @param dividendHigh - The high 64 bits of the dividend.
 * @param dividendLow - The low 64 bits of the dividend.
 * @param divisor - The 64-bit divisor.
 * @returns An array containing the quotient and remainder.
 * @throws {RangeError} If the divisor is zero.
 * 
 * @remarks
 * The algorithm uses a long division method adapted for 128-bit numbers. 
 * It breaks down the dividend and divisor into 32-bit chunks and processes them step by step.
 * The method ensures that the quotient and remainder fit within their respective bounds by 
 * adjusting them iteratively.
 */
export function longDivision128by64(dividendHigh: u64, dividendLow: u64, divisor: u64): u64[] {
  if (divisor === 0) {
    throw new RangeError("Division by zero");
  }

  const u32Max: u64 = 1 << 32;
  const lower32BitsMask: u64 = u32Max - 1;

  // Split the divisor into high and low 32-bit parts.
  const divisorHigh32: u64 = divisor >> 32;
  const divisorLow32: u64 = divisor & lower32BitsMask;

  // Extract the high and low 32-bit parts of the dividend's lower 64 bits.
  const dividendLow32HighBitsShifted: u64 = dividendLow >> 32;
  const dividendLow32 = dividendLow & lower32BitsMask;

  // Initial quotient and remainder estimation for the high part.
  let quotientHigh32: u64 = dividendHigh / divisorHigh32;
  let trialRemainderHigh32: u64 = dividendHigh - quotientHigh32 * divisorHigh32;

  // Adjust the high quotient and remainder.
  while (
    // if quotientHigh doesn't fit in a u32
    quotientHigh32 >= u32Max 
    // or if the estimated quotient and the divisor are to large for the next next portion of the dividend 
    || quotientHigh32 * divisorLow32 > u32Max * trialRemainderHigh32 + dividendLow32HighBitsShifted
  ) {
    quotientHigh32--;
    trialRemainderHigh32 += divisorHigh32;
    if (trialRemainderHigh32 >= u32Max) {
      break;
    }
  }

 // Calculate the next portion of the dividend.
  const remainderHigh32: u64 = 
    // the lower 32-bits of the dividend high 64 bits, but shift to the higher part of the 64 bits
    dividendHigh * u32Max 
    // plus the higher 32-bits of the dividend low 64 bits, but shift to the lower part of the 64 bits
    + dividendLow32HighBitsShifted
    // minus the higher 32-bits of the quotient myltiplied by the divisor as it's already been accounted for
    - quotientHigh32 * divisor;

  // Initial quotient and remainder estimation for the low part.
  let quotientLow: u64 = remainderHigh32 / divisorHigh32;
  let remainderLow: u64 = remainderHigh32 - quotientLow * divisorHigh32;

  // Adjust the low quotient and remainder.
  while (
    // if quotientHigh doesn't fit in a u32
    quotientLow >= u32Max 
    // or if the estimated quotient and the divisor are to large for the next next portion of the dividend 
    || quotientLow * divisorLow32 > u32Max * remainderLow + dividendLow32
  ) {
    quotientLow--;
    remainderLow += divisorHigh32;
    if (remainderLow >= u32Max) {
      break;
    }
  }

  // Combine the high and low parts of the quotient.
  let quotient: u64 = quotientHigh32 * u32Max + quotientLow;

  // Combine the reaminderHigh shift left and remainderLow (dividend  quotient * divisor) to get the final remainder
  let remainder: u64 = remainderHigh32 * u32Max + dividendLow32 - quotientLow * divisor;

  return [quotient, remainder];
}
