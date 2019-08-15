#!/usr/bin/env bash

sh ./generator.sh > CHANGELOG.md

git add CHANGELOG.md
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_USER}"
git commit -m "Update Changelog"
git push "https://${GIT_USER}:${GIT_TOKEN}@${CI_REPOSITORY_URL#*@}" "HEAD:master"