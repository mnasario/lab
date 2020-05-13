#!/usr/bin/env sh

creatingNewConflict()
{
    git checkout $1
    git pull
    echo "$(date) -> $1 \n" >> README.md
    git commit -am "Creating new conflict"
    git push
}

echo "Adding a new conflict in DEV"
creatingNewConflict dev

sleep 1

echo "Adding a new conflict in TEST CONFLICT branch"
creatingNewConflict conflict

git checkout dev


