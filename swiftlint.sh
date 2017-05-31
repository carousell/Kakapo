#!/bin/sh

if [ -n "$GIT_BRANCH" ] || [ -n "$CIRCLECI" ]; then
  echo "Skip swiftlint on CI"
  exit
fi

if [ -n "$CARTHAGE" ]; then
  echo "Skip swiftlint on Carthage"
  exit
fi

swiftlint
