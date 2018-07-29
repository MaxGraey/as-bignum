import { test } from 'ava';
import { setup, decamelize } from '../utils/helpers';

(async () => {
  const instance = await setup('u128');

  for (const tests in instance) {
    for (const testName in instance[tests]) {
      test(decamelize(testName), t => {
        t.truthy(instance[tests][testName]());
      });
    }
  }
})();
