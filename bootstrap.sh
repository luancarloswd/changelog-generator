#!/usr/bin/env bash

git clone "https://${GIT_USER}:${GIT_TOKEN}@${GIT_URL#*@}" .

if [ -z "$GIT_BRANCH_SUBMIT" ];then
  $GIT_BRANCH_SUBMIT="master"
fi

sh ./generator.sh > CHANGELOG.md

git add CHANGELOG.md
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_USER}"
git commit -m "Update Changelog"

git push "https://${GIT_USER}:${GIT_TOKEN}@${GIT_URL#*@}" "HEAD:${GIT_BRANCH_SUBMIT}"