#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'Deployment'
git push -f git@github.com:Everything-Orientation/portfolio.git master:gh-pages

cd -