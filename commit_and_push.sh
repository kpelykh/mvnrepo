#!/bin/bash

cd `dirname $0`

git add --all
git commit -m "`date`"
git push origin master
