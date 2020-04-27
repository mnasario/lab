#!/usr/bin/env sh

git fetch origin
git checkout merge-dev-to-test-with-conflict
git merge --ff dev