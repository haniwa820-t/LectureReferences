#import "@preview/touying:0.8.0": *
#import themes.simple: slide

// 配色・文字・余白。装飾色はメインと比較用の2色に限定する。
#let ink = rgb("182b3a")
#let accent = rgb("006d77")
#let warm = rgb("a04420")
#let muted = rgb("526575")
#let rule-color = rgb("ccd6da")
#let slide-fonts = ("Helvetica Neue", "Hiragino Sans", "Harano Aji Gothic")

// 表示上の章と実装上のモジュールを分ける。
// 補足M06・M09を省いても、章番号は連続する。章名の変更はここだけでよい。
#let chapters = (
  M00: (part: "導入", chapter: "発表の構成"),
  M01: (part: "Ⅰ　引用・参考文献", chapter: "第1章　引用の意義"),
  M02: (part: "Ⅰ　引用・参考文献", chapter: "第2章　引用の条件"),
  M03: (part: "Ⅰ　引用・参考文献", chapter: "第3章　引用の方法"),
  M04: (part: "Ⅰ　引用・参考文献", chapter: "第4章　出典と文献一覧"),
  M05: (part: "Ⅰ　引用・参考文献", chapter: "第5章　引用スタイル"),
  M06: (part: "Ⅰ　引用・参考文献", chapter: "第5章　引用スタイル", supplement: "補足"),
  M07: (part: "Ⅱ　調査・執筆・AI", chapter: "第6章　情報源の探索"),
  M08: (part: "Ⅱ　調査・執筆・AI", chapter: "第7章　文献管理"),
  M09: (part: "Ⅱ　調査・執筆・AI", chapter: "第7章　文献管理", supplement: "補足"),
  M10: (part: "Ⅱ　調査・執筆・AI", chapter: "第8章　AIの原理と利用"),
  M11: (part: "Ⅱ　調査・執筆・AI", chapter: "第9章　レポートの構成"),
  M12: (part: "結び", chapter: "まとめ・参考資料"),
)

#let lecture(id, title, source, note, body) = {
  let heading = if id == "TITLE" { none } else {
    let chapter = chapters.at(id.split("-").first())
    stack(dir: ttb, spacing: 12pt,
      grid(columns: (1fr, auto), align: (left, right),
        text(size: 19pt, fill: accent, weight: "bold", chapter.chapter),
        text(size: 15pt, fill: muted, chapter.part + if "supplement" in chapter { "　／　補足" } else { "" }),
      ),
      block(width: 100%, height: .8pt, fill: rule-color),
      text(size: 36pt, weight: "bold", fill: ink, title),
    )
  }
  slide(config: config-store(footer: text(size: 11pt, fill: muted, source)))[
    #if heading == none { body } else { stack(dir: ttb, spacing: 26pt, heading, body) }
  ]
  speaker-note(note)
}

// 左右の区分は色だけでなく、ラベルや○・△でも識別する。
#let compare(left-title, left-body, right-title, right-body) = grid(
  columns: (1fr, 1fr), gutter: 42pt,
  [#text(size: 25pt, fill: warm, weight: "bold", left-title) #v(14pt) #left-body],
  [#text(size: 25pt, fill: accent, weight: "bold", right-title) #v(14pt) #right-body],
)
#let takeaway(body) = block(inset: (left: 16pt), stroke: (left: 3pt + accent), body)
#let small(body) = text(size: 20pt, body)
#let exercise(body) = [#text(fill: accent, weight: "bold")[演習] #v(12pt) #body]

// 自作の構造図。Typstの線・グリッド・文字だけで描画し、画像に固定しない。
#let citation-link() = {
  grid(columns: (1fr, 65pt, 1fr), align: horizon, gutter: 18pt,
    [#text(size: 26pt, weight: "bold", fill: accent)[本文の引用]
    #v(16pt)
    引用した内容
    #v(10pt)
    #text(weight: "bold")[（著者 年, ページ）]
    #v(14pt)
    #block(width: 100%, height: 1pt, fill: rule-color)
    #v(10pt)
    #small[主張の出所と、使った箇所]],
    [#align(center)[#text(size: 36pt, fill: accent)[↔]]],
    [#text(size: 26pt, weight: "bold", fill: accent)[文献一覧]
    #v(16pt)
    #text(weight: "bold")[著者・年]
    #v(10pt)
    題名・出版元など
    #v(14pt)
    #block(width: 100%, height: 1pt, fill: rule-color)
    #v(10pt)
    #small[資料を特定する書誌情報]],
  )
}
#let flow-step(title, detail, color: accent) = [
  #text(size: 25pt, weight: "bold", fill: color, title)
  #v(10pt)
  #block(width: 100%, height: 1.5pt, fill: color)
  #v(10pt)
  #text(size: 21pt, detail)
]
#let arrow = align(center + horizon, text(size: 29pt, fill: muted)[→])
#let model-process() = stack(dir: ttb, spacing: 28pt,
  stack(dir: ttb, spacing: 14pt,
    text(size: 24pt, weight: "bold", fill: warm)[学習　―　計算の設定を調整],
    grid(columns: (1fr, 32pt, 1fr, 32pt, 1fr, 32pt, 1fr), gutter: 10pt,
      flow-step("文章の見本", [文脈と続き], color: warm), arrow,
      flow-step("予測", [続きの候補], color: warm), arrow,
      flow-step("比較", [見本とのずれ], color: warm), arrow,
      flow-step("設定の調整", [少しずつ更新], color: warm),
    ),
  ),
  stack(dir: ttb, spacing: 14pt,
    text(size: 24pt, weight: "bold", fill: accent)[生成　―　学習した設定で続きを計算],
    grid(columns: (1fr, 32pt, 1fr, 32pt, 1fr, 32pt, 1fr), gutter: 10pt,
      flow-step("入力文", [質問と文脈]), arrow,
      flow-step("計算", [学習済みの設定]), arrow,
      flow-step("続きの選択", [次のトークン]), arrow,
      flow-step("入力に追加", [生成を繰り返す]),
    ),
  ),
)
#let distribution-url = "https://haniwa820-t.github.io/LectureReferences/"
