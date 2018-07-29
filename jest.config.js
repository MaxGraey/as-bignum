module.exports = {
  verbose: true,
  globals: {
    "ts-jest": {
      "tsConfigFile": "./tsconfig.json"
    }
  },
  transform: {
    "^.+\\.ts$": "<rootDir>/node_modules/ts-jest/preprocessor.js"
  },
  testEnvironment: "node",
  testRegex: "(/tests/.*|(\\.)(test|spec))\\.(ts)$",
  testPathIgnorePatterns: [
    "/node_modules/",
    "<rootDir>/tests/types/",
    "<rootDir>/tests/utils/",
    "<rootDir>/tests/build/",
    "<rootDir>/tests/assembly/"
  ],
  moduleFileExtensions: ["ts", "js", "json"],
  rootDir: "./"
};
