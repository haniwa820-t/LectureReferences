#import "../lib/theme.typ": *

// M09。時間と本編／補足の扱いはoutline/outline.mdを参照。

#lecture("M09-01", "執筆ツールは目的と指定に合わせて選ぶ", "【追加】Microsoft Support／Typst公式／biblatex-japanese公式", [優劣ランキングにしない。すぐ使う必要はなく、将来の選択肢として示す。Typstは今回の制作例そのものを見せれば環境を想像しやすい。])[
#table(columns: (140pt, 1fr), inset: 11pt, stroke: .5pt + rgb("ccd6da"),
 [Word], [画面で編集。脚注・文献管理の機能を使う。],
 [Typst], [ソースから組版。今回のスライドもTypst。],
 [LaTeX], [数式や文献管理を組み込んで組版する。])
#v(20pt)
#small[組版：文字・図・余白などを配置して文書を作ること。\
学校課題に指定がある場合は、その指定を先に確認する。]
]

#lecture("M09-02", "LaTeXで日本語文献を管理する", "【追加】前田「biblatex-japaneseパッケージ」・公式リポジトリ", [発表者の指定による推薦。開発途上との公式記述があり、現行環境での全動作を保証しない。ローカル最小例の実行結果は検証ログを参照する。聴衆には細かな設定より、文献データと書式を分けて管理する発想を伝える。])[
#text(size: 29pt, fill: accent)[biblatex-japanese]
#v(18pt)
#small[LaTeXの文献管理biblatexに、日本語用の設定を加える。\
Biberで文献データを処理する。]
#v(22pt)
#raw("\usepackage[backend=biber]{biblatex-japanese}", block: true)
#v(16pt)
#small[使う環境で最小例を確認する。元資料形式やCSLとは別の仕組み。]
]
