#!/usr/bin/env sh

git checkout dev
echo "Adding a new line"
git pull
echo "New line to $1 \n" >> README.md
git commit -am "Creating new conflict"
git push

git checkout test
git checkout -b merge-branch
git merge --ff-only dev
git commit -am "Testing merge down"

git checkout test
git merge --no-ff merge-branch