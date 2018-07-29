import { expect } from 'chai';
import { describe, it } from 'mocha';

describe('Sanity check for WebAssembly', () => {
  it("should be available", () => {
    expect(WebAssembly.Module).to.be.not.eq(undefined);
  });
});
