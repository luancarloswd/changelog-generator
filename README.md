# Changelog Generator

[![CircleCI](https://circleci.com/gh/luancarloswd/changelog-generator.svg?style=svg)](https://circleci.com/gh/luancarloswd/changelog-generator)
[![](https://images.microbadger.com/badges/image/luancarloshs/change-log.svg)](https://microbadger.com/images/luancarloshs/change-log)
[![](https://images.microbadger.com/badges/version/luancarloshs/change-log.svg)](https://microbadger.com/images/luancarloshs/change-log)

## Environment Variables

Raw component props (before transform):

| Variable          | Description             | Required |
| ----------------- | ----------------------- | -------- |
| GIT_USER          | User of git             | ✔️       |
| GIT_TOKEN         | Token of user git       | ✔️       |
| GIT_EMAIL         | Email of user to commit | ✔️       |
| GIT_URL           | Url of git project      | ✔️       |
| GIT_BRANCH_SUBMIT | Name branch to commit   | ❌       |

## Examples

### GitLab

```
changelog:
  image: luancarloshs/change-log
  variables:
    GIT_USER: ""
    GIT_TOKEN: ""
    GIT_EMAIL: ""
    GIT_URL: ""
    GIT_BRANCH_SUBMIT: ""
  artifacts:
    expire_in: 1 week
  only:
    - tags
```
