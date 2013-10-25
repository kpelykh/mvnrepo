#!/bin/bash

cd `dirname $0`

changes=$(git status --porcelain 2>/dev/null| egrep "^(M| M|\?\?)" | wc -l)
if [[ $changes != 0 ]]; then
    echo "Repository contains pending changes."
    exit 1
fi

git pull
