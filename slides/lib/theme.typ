#import "@preview/touying:0.8.0": *
#import themes.simple: slide
#let ink = rgb("182b3a")
#let accent = rgb("006d77")
#let warm = rgb("a04420")
#let muted = rgb("526575")
#let lecture(id, title, source, note, body) = {
  slide(config: config-store(footer: text(size: 11pt, fill: muted, source)))[
    #text(size: 12pt, fill: accent, weight: "bold", id)
    #v(7pt)
    #text(size: 32pt, weight: "bold", fill: ink, title)
    #v(22pt)
    #body
  ]
  speaker-note(note)
}
// 出典欄はlecture関数、比較はcompare、演習はexerciseを編集する。
#let compare(left-title, left-body, right-title, right-body) = grid(
  columns: (1fr, 1fr), gutter: 30pt,
  [#text(fill: warm, weight: "bold", left-title) #v(12pt) #left-body],
  [#text(fill: accent, weight: "bold", right-title) #v(12pt) #right-body],
)
#let takeaway(body) = block(inset: (left: 16pt), stroke: (left: 3pt + accent), body)
#let small(body) = text(size: 19pt, body)
#let exercise(body) = [#text(fill: accent, weight: "bold")[個人で考える] #v(12pt) #body]

// Pages APIが返した実際の公開URL。配布先変更はここを編集する。
#let distribution-url = "https://haniwa820-t.github.io/LectureReferences/"
