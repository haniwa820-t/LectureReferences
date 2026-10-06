// 【追加】本文・自作例・考察は report.tex と共通。出典は脚注に明示。
// 元資料独自形式を再現するため、CSLの標準Chicagoを使わず項目を明示する。
#set document(title: "オノマトペの意味は語だけで決まるか", author: "山根義琉")
#set page(paper: "a4", margin: 24mm, numbering: "1", number-align: center)
#set text(font: ("Harano Aji Mincho", "Libertinus Serif"), lang: "ja", size: 11pt)
#set par(justify: true, first-line-indent: (amount: 1em, all: true), leading: 1em, spacing: 1em)
#set heading(numbering: "1")
#show heading: it => block(above: 1.2em, below: .6em)[#text(font: "Harano Aji Gothic", size: 13pt, weight: "bold")[#if it.numbering != none { [#counter(heading).display()　] }#it.body]]
#show footnote.entry: set text(size: 8.5pt)
#show footnote.entry: set par(first-line-indent: 0em, leading: .4em, spacing: .2em)

#let references = json("references.json")
#let ref(key) = references.find(item => item.id == key)
#let reference-body(item, pages: none) = {
  let author = item.author
  if item.type == "article" {
    [#author. 「#item.title」. 『#item.journal』#item.volume (#item.year): ]
    if pages != none {
      let prefix = if pages.contains("-") { "pp." } else { "p." }
      [#prefix #pages.]
    } else {
      [#item.pages. #link("https://doi.org/" + item.doi)]
    }
  } else if item.type == "web" {
    [#author. 「#item.title」. 『#item.website』. 最終アクセス#item.accessed. #link(item.url)]
  } else {
    [#author. 『#item.title』. #item.year. （配布資料）]
  }
}
#let source-note(key, pages: none) = footnote(reference-body(ref(key), pages: pages))

#align(center)[
  #set par(first-line-indent: 0em)
  #text(9pt)[サンプルレポート（自作教材）] \
  #v(5pt)
  #text(font: "Harano Aji Gothic", size: 17pt, weight: "bold")[オノマトペの意味は語だけで決まるか] \
  #v(3pt)
  動詞との組み合わせから考える \
  #v(5pt)
  山根義琉 IE3-35　2026年10月6日
]

= 問題設定
「どんどん」という語を見ただけでは、何が起きているのかを一つに決めにくい。本稿では、音や様子を表す擬音語・擬態語をまとめてオノマトペと呼ぶ。国立国語研究所の解説では、一つの語が複数の意味や用法を持つ場合が示されている#source-note("ninjal")。

では、オノマトペの意味を考えるとき、語だけを見る方法と、共に使われる動詞を見る方法には、どのような違いがあるのか。本稿はこの問いを扱う。まず文献から語と動詞の組み合わせに関する知見を確認し、次に自作の例文を比較する。その上で、意味の説明には動詞を含む文脈を見ることが有効だが、それだけで意味を一つに確定することはできないと論じる。

= 文献から分かること
玉岡・木山・宮岡は、同じ音のまとまりを繰り返す28語と動詞の組み合わせを調べている。総合考察では、これらを「副詞として機能する」#source-note("tamaoka2011", pages: "76")語として位置付けている。副詞とは、ここでは動作の様子などを表して動詞を詳しく説明する語である。また、コーパスとは、実際の文章などを集めて検索・分析できるようにした資料の集まりである。

同論文の総合考察によれば、新聞と小説ではオノマトペと動詞の組み合わせ方が異なり、語によっても、多様な動詞と結び付くもの、特定の動詞に偏るものなどの違いがある#source-note("tamaoka2011", pages: "75-76")。

この結果から本稿が重視するのは、語の意味を説明する際に、組み合わせる相手を調べる視点である。多くの動詞と使われる語なら、動詞を替えたときの意味の違いを確認する必要がある。一方、特定の動詞とよく使われる語でも、その典型例だけを唯一の使い方として覚えると、別の文を読む際に説明が足りなくなる可能性がある。これは本稿の考察であり、同論文が学習方法の効果を実験したという意味ではない。

#pagebreak()
= 自作例による考察
以下の二文は、比較のために本稿で作成した例であり、コーパスから採集した用例ではない。
#block(inset: (left: 1em), above: .5em, below: .5em)[
  #set par(first-line-indent: 0em)
  （1）生徒が机をどんどんたたく。 \
  （2）班の作業がどんどん進む。
]

（1）では、たたく動作とその音が想像される。（2）では、作業が続いて進展する様子が想像される。二文は同じ「どんどん」を含むが、何が起きているかの説明は同じにならない。動詞と、その動作の対象に目を向けることで、それぞれの文に合う意味を説明しやすくなる。

ただし、動詞だけを取り出せば十分というわけでもない。（1）からは、机をたたく強さや速さが、測定値として分かるわけではない。「どんどん」を数値に置き換える必要がある場面では、回数や時間を別に示すべきである。したがって、動詞を含む文脈は解釈の手がかりとなるが、書かれていない細部まで確定する証拠にはならない。

さらに、この二文だけで、日本語全体における語の使われ方を説明することはできない。自作例は、説明の違いを見える形にするための材料である。一般的な傾向を確かめるには、実際の用例を集め、同じ語が異なる文章でどのように使われるかを比較する必要がある。自作例から考えたことと、多数の用例から確かめられたことは区別しなくてはならない。

= 結論
オノマトペの意味を説明するには、語だけでなく、共に使われる動詞や動作の対象を含む文脈を見ることが有効である。文献に示された組み合わせの違いと、自作例の比較は、この視点の必要性を考える材料となる。ただし、本稿が参照した研究の対象は限定されており、自作例も二文にすぎない。すべてのオノマトペに同じ説明が当てはまると断定せず、別の用例で確かめる余地を残す。

#heading(numbering: none)[参考文献]
#set text(size: 9pt)
#set par(first-line-indent: 0em, hanging-indent: 1em, leading: .45em, spacing: .65em)
#for item in references {
  block(reference-body(item))
}
#v(5pt)
#set text(size: 8.5pt)
#set par(hanging-indent: 0em)
【追加】本文・例文・考察はAIの支援で作成した教材である。参照資料の内容は本文の脚注で区別した。【資料】引用形式は高橋（2021）, pp. 6-14に基づく一例であり、課題で指定された形式を優先する。
