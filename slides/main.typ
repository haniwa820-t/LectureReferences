#import "@preview/touying:0.8.0": *
#import themes.simple: *
#import "lib/theme.typ": *
// full: 全章。standard: 90分を目安に補足を除く。章を増減してもよい。
#let mode = sys.inputs.at("mode", default: "full")
#show: simple-theme.with(
  aspect-ratio: "16-9", header: none, header-right: none,
  subslide-preamble: none, primary: accent,
  config-page(width: 960pt, height: 540pt, margin: (x: 52pt, top: 35pt, bottom: 45pt)),
  config-common(handout: true),
)
#set text(font: "Harano Aji Gothic", lang: "ja", size: 24pt, fill: ink)
#set par(leading: 0.6em)
#set list(spacing: 0.6em)
#lecture("TITLE", "引用と出典をセットで書く", "【追加】発表：山根義琉 IE3-35", [高専3年生の山根です。今日は引用と参考文献を中心に扱います。])[
  #text(size: 34pt, fill: accent)[レポートの書き方]
  #v(20pt)
  山根義琉 IE3-35
  #v(28pt)
  #small[元資料：高橋祥吾『文献引用の方法について（2021年度版）』。  発表者と元資料の著者は別人です。]
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
