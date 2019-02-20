#!/usr/bin/env sh
VERSION=$(cat package.json | \
  grep version | \
  head -1 | \
  awk -F: '{ print $2 }' | \
  sed 's/[",]//g'|
  tr -d '[[:space:]]')

echo "Building image with version ${VERSION}"

docker build -t unstatic.io/website:${VERSION} .