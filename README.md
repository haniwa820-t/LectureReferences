# レポートの書き方：引用・参考文献を中心に

高専1・2年生向け。発表は山根義琉 IE3-35（高専3年生）。時間より内容の充実を優先し、章を飛ばして使える構成とする。

## 編集する場所

- `outline/outline.md`：構成・時間・質問と途中退出の区切り。
- `slides/main.typ`：Touyingの入口。includeをコメントアウトして章を省略できる。
- `slides/lib/theme.typ`：色・文字サイズ・共通のslide関数。
- `slides/modules/`：M00〜M12。各ページに章ID・出典・speaker-noteを付ける。
- `notes/speaker-notes.md`：本人向けの話し方、問い、小話、接続。
- `handouts/`・`exercises/`：配布物の編集ソース。
- `refs/`：参考文献、確認範囲と未確認事項、言語学デモ用データ。
- `docs/`：Pagesで公開するページとPDFのみ。

## macOSでビルドする

確認環境：Typst 0.15.1、Touying 0.8.0（uniwarn 0.1.1）、Harano Aji Gothic。フォントは環境側に用意する。初回はTypstパッケージ取得にネットワークが必要である。

```sh
sh scripts/build.sh
```

全章49ページのスライド、配布ガイド、1枚早見表、演習を`docs/`に生成する。補足M06・M09を省いた本編版は`build/slides-standard.pdf`。`mode=standard`は90分の参考構成であり、厳密な時間制限ではない。

```sh
typst compile --root . --package-cache-path build/typst-packages --input mode=standard slides/main.typ build/slides-standard.pdf
```

本文12ptの配布物を生成する。スライドは16:9、本文24pt。参照例の細部は配布物にも置く。

## PDFを確認する

macOSのPDFKit・AppKitを使って全ページのテキストと一覧画像を出す。Swiftの中間ファイルも`build/`内に置く。

```sh
swift -module-cache-path build/swift-cache scripts/pdf_review.swift docs/pdf/slides.pdf build/review-slides
```

見た目は画像と実際のPDFを確認する。会場の後方席での見え方は、本番投影で別途確認する。

## LaTeX紹介用の最小例

`refs/biblatex-demo.tex`は、LuaLaTeX＋Biber＋biblatex-japaneseで日本語・英語の書誌と引用ページを確認する例である。biblatex-japaneseは開発途上であることを説明し、あらゆる書式・環境の互換性を保証しない。

```sh
mkdir -p build/biblatex-demo
lualatex -interaction=nonstopmode -halt-on-error -output-directory=build/biblatex-demo refs/biblatex-demo.tex
biber --input-directory build/biblatex-demo --output-directory build/biblatex-demo biblatex-demo
lualatex -interaction=nonstopmode -halt-on-error -output-directory=build/biblatex-demo refs/biblatex-demo.tex
lualatex -interaction=nonstopmode -halt-on-error -output-directory=build/biblatex-demo refs/biblatex-demo.tex
```

biblatex-japaneseと日本語フォントの導入が必要。検証範囲は`refs/fact-check-log.md`を参照する。

## GitHub Pages

同じリポジトリの`main`ブランチ、`/docs`を公開元にする。PDFはローカルでビルド・目視確認し、ソースとともにコミットする。CIは公開ファイルの構造と配布リンクを検査する。CI上でのTypst再生成は行わず、フォント差による未確認PDFの公開を避ける。

配布サイト：https://haniwa820-t.github.io/LectureReferences/ 。

公開URLと設定結果は`notes/self-review.md`に記録する。更新時はビルド→全ページ確認→コミット→push→公開PDF確認の順に行う。

元資料PDF、抽出全文、第三者画像、発表者用ノートは`docs/`に入れない。`sources/*.pdf`と`build/`はGit対象外。元資料の再配布許諾は未確認であり、元PDFを公開しない。各資料内で元資料に基づく要約と追加説明を区別する。
