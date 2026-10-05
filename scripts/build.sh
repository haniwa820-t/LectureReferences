#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
mkdir -p build/typst-packages docs/pdf docs/exercises
# 初回のみパッケージ取得にネットワークが必要。版はmain.typで固定。
typst compile --root . --package-cache-path build/typst-packages slides/main.typ docs/pdf/slides.pdf
typst compile --root . --package-cache-path build/typst-packages --input mode=standard slides/main.typ build/slides-standard.pdf
typst compile --root . handouts/guide.typ docs/pdf/guide.pdf
typst compile --root . handouts/cheatsheet.typ docs/pdf/cheatsheet.pdf
typst compile --root . exercises/worksheets.typ docs/exercises/worksheets.pdf
cp refs/linguistics-demo.ris docs/exercises/linguistics-demo.ris
for style in apa ieee chicago-notes; do
  typst compile --root . --input "style=$style" refs/style-comparison.typ "build/style-$style.pdf"
done
