#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/609fffeef332a4001d4f554a

# build site
npm run build

echo "stackbit-build.sh: finished build"
