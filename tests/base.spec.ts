declare const expect: any;

describe('Sanity check for WebAssembly', () => {
  test('should be available', () => {
    expect(WebAssembly).toBeDefined();
  });
});
