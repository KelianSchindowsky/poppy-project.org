#!/usr/bin/env bash

rm -rf .git
cd _site/poppy-project.org
git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_NAME
git init
git remote add origin https://$GH_TOKEN@github.com/$GH_USERNAME/$GH_REPO.git
git add .
git commit -m "Deploy to GitHub Pages (travis build #$TRAVIS_BUILD_NUMBER)"
git push --force --quiet origin HEAD:gh-pages
