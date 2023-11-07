#!/bin/bash
set -exuo pipefail
yarn build
cp dist/wavy.js typst-package/
cp README.md typst-package/
cp LICENSE typst-package/
typst compile wavy.typ wavy.svg
cp wavy.svg typst-package/
