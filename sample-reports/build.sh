#!/bin/sh
# コンパイル結果（PDFと補助ファイル）はソースと同じフォルダへ出力。
set -eu
report_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
project_dir=$(dirname "$report_dir")
# 制限付きの制作環境でもフォントキャッシュをプロジェクト内へ書く。
export TEXMFVAR="$project_dir/build/sample-reports/texmf-var"
export TEXMFCACHE="$TEXMFVAR"
mkdir -p "$TEXMFVAR"
cd "$report_dir"
python3 make_bib.py
for tool in lualatex biber typst; do
  command -v "$tool" >/dev/null || { echo "必要なコマンドがありません: $tool" >&2; exit 1; }
done
lualatex -jobname=report-lualatex -interaction=nonstopmode -halt-on-error report.tex > report-lualatex-pass1.log 2>&1 || { tail -60 report-lualatex-pass1.log; exit 1; }
biber report-lualatex > report-lualatex-biber.log 2>&1 || { cat report-lualatex-biber.log; exit 1; }
for pass in 2 3; do
  lualatex -jobname=report-lualatex -interaction=nonstopmode -halt-on-error report.tex > "report-lualatex-pass$pass.log" 2>&1 || { tail -60 "report-lualatex-pass$pass.log"; exit 1; }
done
typst compile --root "$project_dir" report.typ report-typst.pdf
mkdir -p "$project_dir/docs/pdf"
cp report-lualatex.pdf "$project_dir/docs/pdf/sample-report-lualatex.pdf"
cp report-typst.pdf "$project_dir/docs/pdf/sample-report-typst.pdf"
echo "生成しました: report-lualatex.pdf / report-typst.pdf"
