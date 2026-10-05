#import "@preview/touying:0.8.0": *
#import themes.simple: *
#import "lib/theme.typ": *
// full: 全章。standard: 90分を目安に補足を除く。章を増減してもよい。
#let mode = sys.inputs.at("mode", default: "full")
#show: simple-theme.with(
  aspect-ratio: "16-9", header: none, header-right: none,
  subslide-preamble: none, primary: accent,
  config-page(width: 960pt, height: 540pt, margin: (x: 54pt, top: 30pt, bottom: 45pt)),
  config-common(handout: true),
)
#set text(font: slide-fonts, lang: "ja", size: 26pt, fill: ink)
#set par(leading: 0.55em, spacing: 0.75em)
#set block(above: 0pt, below: 0pt)
#set list(spacing: 0.6em)
#lecture("TITLE", "レポートの書き方", "【追加】発表：山根義琉 IE3-35", [引用・参考文献を中心とする発表。元資料の著者と発表者は別人として明示する。])[
  #v(30pt)
  #text(size: 19pt, fill: accent, weight: "bold")[高専1・2年生向け]
  #v(22pt)
  #text(size: 48pt, weight: "bold")[レポートの書き方]
  #v(14pt)
  #text(size: 32pt, fill: accent)[引用・参考文献を中心に]
  #v(36pt)
  #text(size: 27pt)[山根義琉 IE3-35]
  #v(28pt)
  #text(size: 17pt, fill: muted)[元資料：高橋祥吾『文献引用の方法について（2021年度版）』\
  元資料の著者と発表者は別人。]
]

// include行をコメントアウトして章を飛ばせる。standardでは補足2章を省く。
#include "modules/m00.typ"
#include "modules/m01.typ"
#include "modules/m02.typ"
#include "modules/m03.typ"
#include "modules/m04.typ"
#include "modules/m05.typ"
#if mode == "full" { include "modules/m06.typ" }
#include "modules/m07.typ"
#include "modules/m08.typ"
#if mode == "full" { include "modules/m09.typ" }
#include "modules/m10.typ"
#include "modules/m11.typ"
#include "modules/m12.typ"
