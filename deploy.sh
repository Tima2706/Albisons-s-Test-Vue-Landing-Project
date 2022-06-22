#!/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m "New Deployedment"
git push -f https://github.com/t1mch/hey.git master:gh-pages
cd -