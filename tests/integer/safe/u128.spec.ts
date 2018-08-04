import test from 'ava';
import { setup, decamelize, isThrowable } from '../../utils/helpers';

(async () => {
  const instance = await setup('safe_u128');

  for (const tests in instance) {
    const testsInstance = instance[tests];
    if (isThrowable(tests)) {
      for (const testName in testsInstance) {
        test(decamelize(testName), t => t.throws(() => testsInstance[testName]()));
      }
    } else {
      for (const testName in testsInstance) {
        test(decamelize(testName), t => t.truthy(testsInstance[testName]()));
      }
    }
  }
})();
