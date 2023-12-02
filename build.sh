#!/bin/bash
set -exuo pipefail
yarn build
cp dist/wavy.iife.js typst-package/wavy.js
cp dist/third-party-licenses.txt typst-package/NOTICE
echo "Dependencies:" > typst-package/NOTICE
echo >> typst-package/NOTICE
cat dist/third-party-licenses.txt >> typst-package/NOTICE
cp README.md typst-package/
cp LICENSE typst-package/
typst compile ./wavy.typ wavy.svg
cp wavy.svg typst-package/
