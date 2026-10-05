#set page(paper: "a4", margin: 22mm)
#set text(font: "Harano Aji Gothic", lang: "ja", size: 12pt)
#let style = sys.inputs.at("style", default: "apa")
= 同じ書誌情報から書式を切り替える
【追加】Charles Yu, Interior Chinatown, Pantheon Books, 2020。書誌情報はChicago公式ガイドで確認。内容の引用は行わない。
== #style
#set text(lang: "en")
#bibliography("style-demo.bib", style: style, full: true, title: none)
