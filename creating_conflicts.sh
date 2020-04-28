#!/usr/bin/env sh

creatingNewConflict()
{
    git checkout $1
    git pull
    echo "[$(date)] - New value \n" >> README.md
    git commit -am "Creating new conflict"
    git push
}

echo "Adding a new conflict in DEV"
creatingNewConflict dev

echo "Adding a new conflict in TEST CONFLICT branch"
creatingNewConflict test-with-conflict

git checkout dev