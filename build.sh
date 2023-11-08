#!/bin/bash
set -exuo pipefail
yarn build
cp dist/wavy.iife.js typst-package/wavy.js
cp README.md typst-package/
cp LICENSE typst-package/
typst compile wavy.typ wavy.svg
cp wavy.svg typst-package/
