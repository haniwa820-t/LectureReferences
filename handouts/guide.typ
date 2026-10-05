#set page(paper: "a4", margin: (x: 20mm, y: 18mm), numbering: "1", footer: context [#align(right)[#text(8pt)[山根義琉 IE3-35　#counter(page).display()]]])
#set text(font: "Harano Aji Gothic", lang: "ja", size: 12pt, fill: rgb("182b3a"))
#set par(leading: 0.55em)
#set heading(numbering: none)
#show heading.where(level: 1): set text(size: 22pt, fill: rgb("006d77"))
#show heading.where(level: 2): set text(size: 14pt, fill: rgb("006d77"))
#let source(body) = text(size: 8.5pt, fill: rgb("526575"), body)

= レポートの書き方：引用と参考文献
山根義琉 IE3-35　／　高専1・2年生向け配布資料

== 1　引用は、自分と他人の考えを分ける
【資料】高橋2021は、適切な引用を自分と他人の意見を区別することと結び付けている（p. 1）。権利・敬意・検証可能性という役割を、酒井・戸田山・山内の議論から整理している（pp. 3–4、原典未確認の孫引き）。

【追加】本発表では、読み手が根拠へ戻って考えの組み立てを確かめられることを重視する。文系レポートを中心に扱うが、実験レポートの条件や測定値の出所を記録する習慣ともつながる。

== 2　直接引用と間接引用
【資料】原文をそのまま使う直接引用と、意味を保って自分の言葉でまとめる間接引用の両方に出典が必要である（高橋2021, pp. 2–4）。原文を変えて直接引用しない。原文の誤りを示す必要がある場合は、元資料方式では（ママ）と付ける。

【追加】言い換えでは、語尾や同義語だけの変更にとどめず、内容を説明し直す。その後に原文へ戻り、意味を変えていないか確認する。自分の意見を資料の著者の意見に見せない。

== 3　本文の出典と末尾の一覧
【資料】本文には「どの説明がどの資料に基づくか」を示し、末尾にはその資料を探す書誌情報を置く（高橋2021, pp. 4–7）。書誌情報とは、著者・題名・出版年などの資料を特定する情報である。

#table(columns: (1fr, 1fr), inset: 9pt, stroke: .5pt + rgb("ccd6da"),
 [*本文*], [*文献一覧*],
 [説明（高橋 2021, p. 4）。], [高橋祥吾. 2021. 『文献引用の方法について（2021年度版）』.],
 [注記式なら引用箇所に注を付ける。], [使った資料を漏れなく対応させる。])

== 4　形式は指定に従い、同じ文書で統一する
【資料】元資料はシカゴを基に日本語向けに調整した一例である（高橋2021, pp. 1, 15）。【追加】Zotero標準Chicagoとは一致しない。現行Chicago公式ガイドにも変化があるため、2021年の例を唯一の規則として扱わない。

#pagebreak()
= 出典の型を資料の種類で選ぶ
【資料】以下は高橋2021, pp. 6–14の方式を要約したテンプレート。「著者」等は置き換える欄であり、存在する文献の書誌ではない。

== 単行本
脚注：著者, 『書名』, (出版社, 年), p. 50.\
一覧：著者. 『書名』. 出版社. 年.

== 翻訳書
脚注：原著者, 『書名』, 訳者(訳), (出版社, 年), 引用ページ.\
一覧：原著者. 『書名』. 訳者(訳). 出版社. 年.

原著者の表記には流儀がある。ここでは基本項目を示し、元資料の姓・イニシャル方式を使う場合は他の形式と混ぜない。

== 論文集の一章
脚注：執筆者. 「章名」. 編者(編)『書名』所収, (出版社, 年), 引用ページ.\
一覧：執筆者. 「章名」. 編者(編)『書名』所収, 章の全ページ範囲. 出版社. 年.

== 雑誌論文
脚注：著者. 「論文名」. 『雑誌名』巻 (年): 引用ページ.\
一覧：著者. 「論文名」. 『雑誌名』巻 (年): 論文の全ページ範囲.

【追加・確認済み書誌例】玉岡賀津雄・木山幸子・宮岡弥生. 「新聞と小説のコーパスにおけるオノマトペと動詞の共起パターン」. 『言語研究』139 (2011): 57-84. #link("https://doi.org/10.11435/gengo.139.0_57")[https://doi.org/10.11435/gengo.139.0_57]

== Webページ
作者・運営者. 「記事名」. 『サイト名』. 更新日（分かる場合）. 最終アクセス年月日. URL

更新日を推測で作らない。特定ページを使った場合はその記事名とURLを残す。雑誌論文をPDFで見つけた場合は雑誌論文として記す。

== ページと注番号
【資料】元資料方式では、p. 50、pp. 10-13のように書き、注は「引用」#super[1]。のように閉じ鉤括弧の後・句点の前に置く（高橋2021, pp. 7, 14）。他のスタイルでは位置が異なる。

#pagebreak()
= 情報源を探し、原典とメモを残す
== 調べる入口
【追加】#link("https://cir.nii.ac.jp/")[CiNii Research]、#link("https://www.jstage.jst.go.jp/")[J-STAGE]、#link("https://ndlsearch.ndl.go.jp/")[NDLサーチ]、#link("https://scholar.google.com/intl/ja/scholar/about.html")[Google Scholar]、#link("https://www.e-stat.go.jp/")[e-Stat]と学校図書館を使い分ける。公式ページは2026年10月6日に確認した。

【資料】高橋2021は、作成者や出所の分かる資料を使うことを重視している（pp. 10–14）。【追加】媒体だけで決めず、誰が、何の根拠で、いつ、何のために作った資料かを評価する。Wikipediaなどから調べ始めても、参照している原典を読んで確認する。

== 言語学の検索例
検索語：オノマトペ　新聞　小説

玉岡ほか2011の論文ページで著者3名、2011年、139巻、57-84頁、DOIを探す。J-STAGE公開日2022年は論文の出版年と違う。検索で見つかったことと、論文を読んで内容を確認したことを区別する。

== 読書メモの型
#table(columns: (80pt, 1fr), inset: 9pt, stroke: .5pt + rgb("ccd6da"),
 [資料], [著者・年・題名・DOI／URL],
 [箇所], [ページ・節・見出し],
 [資料の内容], [引用した原文／自分の言葉で要約],
 [自分の考え], [疑問・反論・使い道])
【追加】メモの引用・要約・自分の考えを分ける。ページのない資料にページ番号を付けない。

== Zoteroを使う
【追加・公式確認】MacではZotero本体をApplicationsへ置き、ブラウザのConnectorも用意する。論文の詳細ページで登録し、著者・年・巻号・ページを原典と照合する。コレクション・タグ・メモで整理できる。

WordではZoteroのAdd/Edit Citationで文献と引用ページを選び、Add/Edit Bibliographyで一覧を作る。Document Preferencesで形式を変えられる。出力は目視で確認する。端末がない人は投影デモを見るだけでよい。

自動取得が難しければRIS/BibTeXや手入力を使う。個別サイトのConnectorとWordの操作は、本番前にリハーサルする。

#pagebreak()
= AIと執筆ツールを責任ある形で使う
== AIの学習と生成を分けて考える
【追加】横井祥2026の著者公開スライド（2, 10–20）を参考に、文脈から続きを予測し、学習で計算の設定を調整するという入口を示す。生成では入力された文脈を使う。単なる文章の暗記一覧や固定の予測表だけで説明しない。

指定動画 #link("https://youtu.be/umxgVN6xNj0")[umxgVN6xNj0] と著者スライドは対応する。動画の日本語自動字幕8:27–12:39・17:29–18:42を著者スライドと照合した。字幕には誤変換があるため直接引用せず、原理を要約した。

== 根拠の確認はAI利用でも同じ
【追加・実践方針】文献の存在、原典の箇所、前後の意味、自分の主張との関係を順に確かめる。AIの出力が流暢でも外部事実が正しい証拠にはならない。検索付きAIでも示されたページを読む。

AI利用は認められている。問いの相談、検索語や構成の候補、表現の見直しに使える。内容を理解し、出典を確認し、利用範囲を説明する。申告は課題や学校の指示に従う。出力自体を分析対象にする場合は、その記録と外部事実の根拠を分ける。

== 執筆ツールを選ぶ
Wordは画面で編集し、脚注・文献機能を使う。Typst・LaTeXはソースから組版する。どれを選んでも引用箇所と文献一覧の対応を確認する。

【追加・発表者指定】LaTeXの日本語文献管理にはbiblatex-japaneseを紹介する。biblatexに日本語用設定を加え、Biberで文献データを処理する。元資料方式やZoteroのCSLとは別の仕組みである。公式には開発途上の記載があるため、使用環境で最小例を試す。

== 問いと構成を絞る
【資料】調べながら対象を限定し、問いに答える理由を用意する（高橋2021, pp. 28–29）。結論は願いや感想だけで終えず、問いに答える。段落には一つの中心的話題を置く（pp. 31–33、作成中の内容なので補助的に扱う）。

【追加】個人の興味からテーマを選んでもよい。読み手が検討できる対象・範囲・比較方法へ具体化する。論証型レポートと感想を求める課題の違いにも注意する。

#pagebreak()
= レポートを読み返すチェックリスト
【資料】高橋2021, pp. 21–22を要約。元授業の字数・提出・評価条件は今回の条件ではない。

+ 引用と自分の文章の境目が分かるか。
+ 直接引用は原文と一致し、間接引用は意味を保っているか。
+ 本文の出典と文献一覧が対応しているか。
+ 著者・題名・年・版・ページを確認したか。
+ 選んだ形式を文書全体で統一したか。
+ 問いが途中で変わっていないか。
+ 結論を支える理由と根拠があるか。
+ 反対意見や限界を検討したか。
+ 引用だけ、または自分の意見だけに偏っていないか。
+ 文体・段落・不自然な表現を読み返したか。

【追加】AIを使った場合は、文献・数値・引用を原典で照合したか、利用範囲を説明できるかも確認する。端末なしでも紙の文章を読んで点検できる。

== 小話：形式が違っても管理が役立つ
書誌データと出力の形式を分けると、同じ文献を何度も手入力せずに済む。ただし、登録した文献データが誤っていれば、形式を整えても根拠は正しくならない。

== 元資料への謝辞と制作の記録
高橋祥吾氏の元資料を参考に、演習・検索・文献管理・AIの説明を追加した。発表者の山根義琉 IE3-35と元資料の著者は別人である。

本プロジェクトではAIの支援で構成・教材例・ソースを作成し、元資料と公式情報を照合している。動画本体、会場環境、Word/Zotero実機のリハーサルについては確認範囲を別途記録する。

#pagebreak()
= 参考資料と公式リンク
#text(size: 9.5pt)[
高橋祥吾. 2021. 『文献引用の方法について（2021年度版）』. 配布教材.\
玉岡賀津雄・木山幸子・宮岡弥生. 「新聞と小説のコーパスにおけるオノマトペと動詞の共起パターン」. 『言語研究』139 (2011): 57-84. #link("https://doi.org/10.11435/gengo.139.0_57")[DOI].\
横井祥. 「言語モデルから言語について語る際に押さえておきたいこと」. 2026年3月20日. #link("https://speakerdeck.com/eumesy/before-talking-about-language-via-language-models")[著者公開スライド].

Zotero. #link("https://www.zotero.org/support/quick_start_guide")[The Basics].\
Zotero. #link("https://www.zotero.org/support/installation")[Installation Instructions].\
Zotero. #link("https://www.zotero.org/support/word_processor_plugin_usage")[Using the Zotero Word Plugin].\
Zotero. #link("https://www.zotero.org/support/dev/translators")[Zotero Translators].

Microsoft. #link("https://support.microsoft.com/ja-jp/word/add-footnotes-and-endnotes-in-word-for-mac")[Word for Macに脚注と脚注を追加する].\
Touying. #link("https://typst.app/universe/package/touying/")[Typst Universe].\
Typst. #link("https://typst.app/docs/reference/model/bibliography/")[Bibliography].\
前田一貴. #link("https://github.com/kmaed/biblatex-japanese")[biblatex-japanese公式リポジトリ].

University of Chicago Press. #link("https://www.chicagomanualofstyle.org/tools_citationguide/citation-guide-1.html")[Notes and Bibliography: Sample Citations].

国立情報学研究所. #link("https://cir.nii.ac.jp/")[CiNii Research].\
国立国会図書館. #link("https://ndlsearch.ndl.go.jp/")[国立国会図書館サーチ].\
Google. #link("https://scholar.google.com/intl/ja/scholar/about.html")[About Google Scholar].\
政府統計の総合窓口. #link("https://www.e-stat.go.jp/")[e-Stat].

Web資料の最終アクセス：2026年10月6日。書誌例で使用したCharles Yu, Interior Chinatown, Pantheon Books, 2020はChicago公式ガイドで確認した。本の内容自体は引用していない。
]
