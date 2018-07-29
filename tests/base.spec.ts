import { should } from 'chai';
import { describe, it } from 'mocha';

describe('Sanity check for WebAssembly', () => {
  it('should be available', () => {
    should().exist(WebAssembly);
  });
});
