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

git checkout test
git merge --ff-only merge-branch
git push

git checkout dev
git merge --no-ff --no-commit test
#git commit -a -m "Merge down" --no-edit
#git push
#git branch -D merge-branch