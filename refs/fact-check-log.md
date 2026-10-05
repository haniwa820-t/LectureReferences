# ファクトチェックログ

確認日：2026-10-06。書誌・機能は公式ページと元資料を区別する。未実施のデモを実施済みと表現しない。

| ID | 情報源 | 確認箇所・結果 | 状態 |
|---|---|---|---|
| 高橋2021 | ローカル配布教材（再配布しない） | 元資料PDFの1–17, 21–22, 24–29, 31–33頁を確認。形式と論証の説明は要約。原典未読の書籍は孫引きとする。 | 資料確認済み（実機の範囲は本文参照） |
| 横井2026 | https://speakerdeck.com/eumesy/before-talking-about-language-via-language-models | 著者公開スライド2,10–20を確認。対応動画IDは一致。動画本体・字幕は未取得で、時刻引用はしない。 | 資料確認済み（実機の範囲は本文参照） |
| 玉岡ほか2011 | https://www.jstage.jst.go.jp/article/gengo/139/0/139_57/_article/-char/ja | 言語研究139 (2011), 57-84、著者3名、DOI 10.11435/gengo.139.0_57を確認。本文の代わりに抄録だけで広い主張を作らない。 | 資料確認済み（実機の範囲は本文参照） |
| Zotero基本 | https://www.zotero.org/support/quick_start_guide | 書誌の収集・整理・メモ等を公式ガイドで確認。サイト別Connectorの実機動作は未実施。 | 資料確認済み（実機の範囲は本文参照） |
| Zotero導入 | https://www.zotero.org/support/installation | MacでdmgからApplicationsへ配置、ブラウザConnectorを併せて入れる手順を確認。 | 資料確認済み（実機の範囲は本文参照） |
| Zotero Word | https://www.zotero.org/support/word_processor_plugin_usage | 引用・ページ指定・文献一覧・Document Preferencesによるスタイル切替を確認。実機デモは要リハーサル。 | 資料確認済み（実機の範囲は本文参照） |
| Zotero変換 | https://www.zotero.org/support/dev/translators | RIS/BibTeXのインポート・エクスポート、DOI検索の役割を確認。CSL JSONを説明するなら個別の書き出しも確認する。 | 資料確認済み（実機の範囲は本文参照） |
| Mac脚注 | https://support.microsoft.com/ja-jp/word/add-footnotes-and-endnotes-in-word-for-mac | 参照から脚注挿入、下部に入力する手順を確認。細かなUIは版差がある。 | 資料確認済み（実機の範囲は本文参照） |
| Touying | https://typst.app/universe/package/touying/ | Touying0.8.0、Typst0.15系要件を確認。ローカルTypst0.15.1でコンパイルを実施。 | 資料確認済み（実機の範囲は本文参照） |
| Typst文献 | https://typst.app/docs/reference/model/bibliography/ | BibLaTeX/Hayagriva入力、CSLスタイルによる参考文献出力を確認。apa/ieee/chicago-notesを実行した。 | 資料確認済み（実機の範囲は本文参照） |
| biblatex日本語 | https://github.com/kmaed/biblatex-japanese | 公式READMEとローカルdocの説明ソースを確認。開発途上と明記。実機最小例の結果は別記。 | 資料確認済み（実機の範囲は本文参照） |
| Chicago | https://www.chicagomanualofstyle.org/tools_citationguide/citation-guide-1.html | YuのInterior Chinatown書誌を確認。現行ガイドでは本の出版地と章全体の範囲が必須でなくなっており、元資料方式と区別する。 | 資料確認済み（実機の範囲は本文参照） |
| CiNii | https://cir.nii.ac.jp/ | 検索対象に論文・図書。CiNii Books機能統合の案内を確認したので旧名称・画面を固定しない。 | 資料確認済み（実機の範囲は本文参照） |
| NDL | https://ndlsearch.ndl.go.jp/ | 資料の検索入口を確認。個別の所蔵・貸出可否は未確認。 | 資料確認済み（実機の範囲は本文参照） |
| Scholar | https://scholar.google.com/intl/ja/scholar/about.html | 学術資料の検索入口を確認。検索結果を本文確認の代わりにしない。 | 資料確認済み（実機の範囲は本文参照） |
| e-Stat | https://www.e-stat.go.jp/ | 統計の検索入口を確認。今回の教材では数値統計の主張を加えない。 | 資料確認済み（実機の範囲は本文参照） |
| MLA | https://style.mla.org/works-cited/citations-by-format/ | 公式の核となる書誌要素の説明を確認。具体的なMLA書式比較は本編では実施しない。 | 資料確認済み（実機の範囲は本文参照） |
| Pages | https://docs.github.com/en/pages/getting-started-with-github-pages/what-is-github-pages | 静的ページの配布先として使用。公開できたことは実URLとダウンロードの確認後に記録する。 | 資料確認済み（実機の範囲は本文参照） |

## 未確認・採用しなかった情報

- 指定動画本体：Web取得失敗。著者公開スライドの動画リンクがumxgVN6xNj0を指すことは確認。動画の発言時刻を教材に載せない。
- APA公式Book References：ページ本文を取得できなかった。具体例はTypstの内蔵CSLによる生成結果として説明し、APA全規則を確認済みとはしない。
- IEEE公式Reference Guide：この環境のWebツールで取得できなかった。具体例はTypst内蔵CSLで生成したものとして示す。
- SIST02公式旧URL：国会図書館保存サイトへの転送後を取得できず、補足候補にとどめる。
- 日本語CSL候補：society-of-japanese-linguistics.cslという推測URLは取得できず、配布物のリンクとして使用しない。確認済みスタイルを採用した時に追加する。
- 元資料再配布許諾：未確認。元PDF・抽出全文・第三者の本文画像を公開対象に含めない。
- 会場設備・通信・聴衆端末：未確認。全演習に端末なしの代替を用意する。
- Zotero/Wordの画面操作デモ、AI文献生成デモ：未実施。手順カードと書誌データで代替できるようにする。

## 制作環境の確認

- macOS、Typst 0.15.1、Touying 0.8.0、uniwarn 0.1.1。
- 日本語フォント：Harano Aji Gothic（ローカルのTypst fontsで確認）。再配布せず、環境側で用意する。
- 全モジュールの累積ビルドM00〜M12が成功（build/module-build-log.txt）。
- CLIログイン：haniwa820-t。トークンはファイルや公開物に記録しない。
- 公開用の最終確認・biblatex最小例の実行結果はセルフレビューに記録する。

## 実行して確認した出力

- スライド全章49ページ、標準版（M06・M09省略）、ガイド6ページ、早見表1ページ、演習7ページをTypstで生成。全ページの一覧画像と本文抽出で確認した。
- 書式比較：refs/style-comparison.typからapa / ieee / chicago-notesを実際に生成。文献出力部分の言語をenに固定してスライドの例と照合した。日本語ローカライズでは年表記等が変わる。これはZoteroの実機出力の記録ではない。
- LuaHBTeX 1.24.0（TeX Live 2026）、Biber 2.21、biblatex-japaneseのローカルProvidesPackage表示2018/02/15で最小例を実行。LuaLaTeX→Biber→LuaLaTeX×2で未定義引用が解消。日本語著者3名の姓名順、和欧混在、引用ページp. 57、論文範囲pp. 57–84、DOIをPDF本文で確認。翻訳書・他スタイル・Zotero自動書き出し経由は未検証。
- Pagesの公開元main /docsはGitHub公式設定資料で確認：https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site 。
