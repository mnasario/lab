#!/usr/bin/env sh

git commit -am "Conflict solved"
git push
git checkout dev
git branch -D merge-dev-to-test-with-conflict