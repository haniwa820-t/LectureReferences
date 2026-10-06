"""共通書誌JSONから、LuaLaTeX用のBibLaTeXデータを生成する。"""
import json
from pathlib import Path

folder = Path(__file__).resolve().parent
entries = json.loads((folder / "references.json").read_text())
lines = ["% references.json から生成。書誌情報の変更はJSONに行う。"]
for entry in entries:
    kind = {"article": "article", "web": "online", "material": "misc"}[entry["type"]]
    # 本教材は姓名を分けず、確認した日本語の表示名を維持する。
    author = " and ".join("{" + name + "}" for name in entry["author"].split("・"))
    fields = {"author": author, "title": entry["title"], "langid": "japanese"}
    if kind == "article":
        fields.update(journaltitle=entry["journal"], volume=entry["volume"],
                      year=entry["year"], pages=entry["pages"].replace("-", "--"), doi=entry["doi"])
    elif kind == "online":
        fields.update(organization=entry["website"], url=entry["url"],
                      note=entry["accessed"], urldate="2026-10-06")
    else:
        fields["year"] = entry["year"]
    lines.append("@" + kind + "{" + entry["id"] + ",")
    lines.extend("  " + key + " = {" + value + "}," for key, value in fields.items())
    lines.append("}\n")
(folder / "references.bib").write_text("\n".join(lines).rstrip() + "\n")
