module.exports = {
  extends: ['@commitlint/config-conventional'],

  rules: {
    'subject-case': [0],
    'subject-full-stop': [2, 'never', '.'],
    'header-max-length': [2, 'always', 50],
    'body-max-line-length': [2, 'always', 72]
  }
};
