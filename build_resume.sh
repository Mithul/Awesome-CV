#!/bin/bash

git stash
orig_branch=`git branch | grep "^*" | cut -f 2 -d ' '`
for var in "$@"
do
    git checkout $var
    xelatex resume.tex
    cp resume.pdf resume.$var.pdf
done
git checkout $orig_branch
