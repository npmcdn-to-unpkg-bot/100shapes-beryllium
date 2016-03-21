#!/usr/bin/env bash

if [ "$TRAVIS" = "true" ]
then
  # git need this, on Travis-CI nobody is defined
  git config --global user.email "gh-pages@localhost"
  git config --global user.name "npm gh-pages"

  ./node_modules/.bin/gh-pages --dist public --repo https://$GH_TOKEN@github.com/100Shapes/100shapes-beryllium.git
  --silent
  .
else
  ./node_modules/.bin/gh-pages --dist public
fi


