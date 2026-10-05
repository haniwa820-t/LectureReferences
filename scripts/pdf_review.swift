import Foundation
import AppKit
import PDFKit
let args = CommandLine.arguments
let input = args[1]
let out = args[2]
let doc = PDFDocument(url: URL(fileURLWithPath: input))!
try! FileManager.default.createDirectory(atPath: out, withIntermediateDirectories: true)
var txt = ""
for i in 0..<doc.pageCount {
 let page = doc.page(at: i)!
 txt += "\n=== PAGE \(i + 1) ===\n" + (page.string ?? "")
}
try! txt.write(toFile: out + "/text.txt", atomically: true, encoding: .utf8)
let cols = 3, rows = 3, cellW = 480, cellH = 300
for group in 0..<((doc.pageCount + 8) / 9) {
 let sheet = NSImage(size: NSSize(width: cols*cellW, height: rows*cellH))
 sheet.lockFocus()
 NSColor.white.setFill(); NSRect(x:0,y:0,width:cols*cellW,height:rows*cellH).fill()
 for k in 0..<9 {
  let ix = group*9+k
  if ix >= doc.pageCount { break }
  let thumb = doc.page(at: ix)!.thumbnail(of: NSSize(width: cellW-12, height: cellH-25), for: .mediaBox)
  let x = (k%cols)*cellW+6, y = (rows-1-k/cols)*cellH+22
  let scale = min(CGFloat(cellW-12)/thumb.size.width, CGFloat(cellH-28)/thumb.size.height)
  thumb.draw(in: NSRect(x:CGFloat(x),y:CGFloat(y),width:thumb.size.width*scale,height:thumb.size.height*scale))
  let label = "Page \(ix+1)" as NSString
  label.draw(at: NSPoint(x:x,y:y-18), withAttributes:[.font:NSFont.systemFont(ofSize:14),.foregroundColor:NSColor.black])
 }
 sheet.unlockFocus()
 let rep = NSBitmapImageRep(data: sheet.tiffRepresentation!)!
 try! rep.representation(using: .png, properties: [:])!.write(to: URL(fileURLWithPath: out+"/sheet-\(group+1).png"))
}
print("\(input): \(doc.pageCount) pages; contact sheets at \(out)")
