"""Pagesの配布物を取得し、公開PDFがローカルの完成版と一致するか確認する。"""
from pathlib import Path
from urllib.request import urlopen, Request
from hashlib import sha256
base = 'https://haniwa820-t.github.io/LectureReferences/'
root = Path(__file__).resolve().parents[1]
paths = ['index.html', 'pdf/slides.pdf', 'pdf/guide.pdf', 'pdf/cheatsheet.pdf', 'exercises/worksheets.pdf', 'exercises/linguistics-demo.ris']
for relative in paths:
    response = urlopen(Request(base + relative, headers={'Cache-Control': 'no-cache'}), timeout=25)
    data = response.read()
    local = (root / 'docs' / relative).read_bytes()
    assert sha256(data).digest() == sha256(local).digest(), f'公開版が更新待ち: {relative}'
    print(f'{relative}: HTTP {response.status}, {len(data)} bytes, SHA-256一致')
