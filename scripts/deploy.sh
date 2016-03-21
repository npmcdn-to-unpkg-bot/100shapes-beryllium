#!/usr/bin/env bash

if [ "$TRAVIS" = "true" ]
then
  # git need this, on Travis-CI nobody is defined
  git config --global user.email "gh-pages@localhost"
  git config --global user.name "npm gh-pages"
fi

./node_modules/.bin/gh-pages \
  # ADJUST YOUR REMOTE HERE
  --repo https://$GITHUB_TOKEN@github.com/100Shapes/100shapes-beryllium.git \
  # TO HIDE YOUR $GITHUB_TOKEN!
  # this is really important
  --silent