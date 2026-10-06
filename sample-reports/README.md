# サンプルレポート：LuaLaTeX / Typst

【追加】「オノマトペの意味は語だけで決まるか――動詞との組み合わせから考える」を題材とした自作教材である。同じ本文・例文・出典を、二つの組版システムで作成した。学習方法の効果を実証した研究や、学生が実際に提出したレポートではない。

## ファイル

| ファイル | 役割 |
|---|---|
| `report.tex` | LuaLaTeX版の本文と文書設定 |
| `sample-citations.sty` | この教材で使う脚注と参考文献の書式 |
| `report.typ` | Typst版の本文と文書設定 |
| `references.json` | 両版で使う共通の書誌情報 |
| `make_bib.py` | JSONからBibLaTeX形式へ変換する補助スクリプト |
| `references.bib` | LuaLaTeX版で使う、生成済みの書誌データ |
| `report-lualatex.pdf` / `report-typst.pdf` | このフォルダ内に生成する完成PDF（各2ページ） |
| `build.sh` | 両版をビルドし、公開用PDFをコピーする |

## ビルド

プロジェクトのルートから実行する。

```sh
sh sample-reports/build.sh
```

LuaLaTeX → Biber → LuaLaTeXを2回実行し、Typst版も生成する。PDF、`.aux`、`.bbl`、`.bcf`、`.blg`、`.run.xml`、ログ等のコンパイル結果は、ソースと同じ`sample-reports/`内に出力する。補助ファイルはこのフォルダの`.gitignore`でGit管理から除外する。フォントキャッシュだけは、実行環境用の`build/sample-reports/texmf-var/`を使う。

完成PDFを、同じリポジトリの`docs/pdf/sample-report-lualatex.pdf`と`docs/pdf/sample-report-typst.pdf`へコピーする。`docs/index.html`に閲覧リンクを追加した。再編集後はこのスクリプトで公開用コピーも更新し、PDFを確認してからコミット・pushする。

必要な環境はLuaLaTeX、Biber、biblatex-japanese、Typst、Python 3とHarano Ajiフォントである。フォントやパッケージをこのフォルダから再配布してはいない。確認した環境はLuaHBTeX 1.24.0（TeX Live 2026）、Biber 2.21、biblatex 3.21、biblatex-japaneseのパッケージ表示2018/02/15、Typst 0.15.1である。

## 引用形式と教材としての見どころ

【資料】形式は、高橋祥吾『文献引用の方法について（2021年度版）』, pp. 6-14と`AGENTS.md` §4の注記式に基づく。この形式は授業・分野を問わず唯一の規則ではない。課題の指定を優先する。

- 第1節：Web解説を自分の言葉で紹介し、最終アクセス日とそのページのURLを脚注に示す。ページ自体の更新日は確認できないため、サイトの著作権表示年を更新日として補っていない。
- 第2節：短い直接引用を鉤括弧に入れ、その直後に注番号を置く。同じ論文の間接引用にも、句点の前に別の注番号を付ける。
- 脚注2・3：引用箇所の`p. 76`と`pp. 75-76`を示す。
- 参考文献：雑誌論文は論文全体の`57-84`とDOI URLを示す。Webで取得した論文をWeb記事の形式に置き換えていない。
- 第3・4節：文献の著者の主張と教材の筆者の考察を分け、自作例の限界を明記する。
- 末尾：教材の追加内容と書式の元資料、AI支援の利用範囲を明記する。

【追加】LuaLaTeX版はbiblatex-japaneseとBiberを使い、`sample-citations.sty`で今回の3種類（雑誌論文、Web、配布資料）の表示を設定した。標準Chicagoの出力や、biblatex-japanese標準出力が元資料形式と一致すると説明するものではない。他の文献種別に広げる場合は設定を追加して検証する。Typst版もCSLの標準Chicagoを使用せず、共通JSONからこの教材用の形式で表示している。

## 根拠の確認

2026年10月6日、以下の原典・公式情報を確認した。確認箇所の詳細は`../refs/fact-check-log.md`に記録する。

- 玉岡賀津雄・木山幸子・宮岡弥生. 「新聞と小説のコーパスにおけるオノマトペと動詞の共起パターン」. 『言語研究』139 (2011): 57-84. https://doi.org/10.11435/gengo.139.0_57
  - 本文のpp. 75-76と、誌面p. 76の短句「副詞として機能する」を確認。既存の講演用資料では書誌登録例だったが、今回は論文本文の確認箇所に基づいて引用している。
- 国立国語研究所. 「「擬音語・擬態語」にはどんな種類がある？」. 『日本語を楽しもう！擬音語って？擬態語って？』. 最終アクセス2026年10月6日. https://www2.ninjal.ac.jp/Onomatope/column/nihongo_1.html
  - ページ自身の説明を参照した。ページが紹介する金田一（1978）の分類を原典で確認したようには扱わず、その原典を参考文献に追加していない。
- biblatex-japanese公式リポジトリ：https://github.com/kmaed/biblatex-japanese
- Typst公式の脚注と段落設定：https://typst.app/docs/reference/model/footnote/ 、https://typst.app/docs/reference/model/par/

第三者のPDF、本文画像、図表は同梱しない。完成PDFには短い直接引用、要約、自作の例文と考察のみを掲載する。
