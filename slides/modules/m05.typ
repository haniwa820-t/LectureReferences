#import "../lib/theme.typ": *

// M05。時間と本編／補足の扱いはoutline/outline.mdを参照。

#lecture("M05-01", "引用スタイルの種類", "【資料】高橋 2021, p. 15（要約）／【追加】各スタイル公式・Typst出力", [代表的名称の紹介にとどめ、全流派の細部をここで説明しない。SIST02は補足の確認候補であり、最新の公式ページを確認できないまま新しい標準として紹介しない。元資料の独自形式をZoteroのChicago出力と一致すると言わない。])[
- 高橋2021の日本語形式は、一つの例。
- シカゴ、APA、IEEE、MLAなど、異なる形式がある。
- 同じ情報でも、並び順や記号が変わる。
#v(25pt)
#takeaway[指定された形式を優先し、文書内で統一。]
]

#lecture("M05-02", "APA・IEEE・Chicago", "【追加】Chicago公式書誌例／Typst 0.15.1の内蔵CSL", [実際にビルドした書式サンプルと照合し、違いがあればこの本文を直す。同じ本を使っても著者の表示や年の位置が変わることを見せる。本の内容を読んだとして引用するのではなく、書誌の変換例として使う。])[
Charles Yu, _Interior Chinatown_, Pantheon Books, 2020
#v(18pt)
#small[
*APA*　Yu, C. (2020). _Interior Chinatown_. Pantheon Books.

*IEEE*　[1] C. Yu, _Interior Chinatown_. Pantheon Books, 2020.

*Chicago*　Yu, Charles. _Interior Chinatown_. Pantheon Books, 2020.
]
#v(15pt)
#small[Typst 0.15.1の内蔵CSLによる出力例。元資料の日本語形式とは別。]
]

#lecture("M05-03", "前半の要点・質疑", "【資料】高橋 2021, pp. 1–7（要約）／【追加】Q1・AI利用の方針", [Q1の質問例：要約にも出典が必要か、文献一覧だけではなぜ不足か。質問を待つ時間を確保する。退出者には配布ページの場所を示す。後半に進む接続：書誌情報の必要性が分かったところで、探す方法・管理する方法を紹介する。])[
+ 自分と他人の考えを分ける。
+ 引用した箇所に、出典とページを付ける。
+ 末尾の文献一覧と対応させる。
+ AIが挙げた根拠も、原典で確認する。
#v(20pt)
#takeaway[質疑①　／　休憩・退出・再参加の区切り
]
#v(10pt)
#small[配布先：#link(distribution-url)[haniwa820-t.github.io/LectureReferences/]]
]
