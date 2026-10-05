"""配布ファイルとローカルのダウンロードリンクを検査する（ネット接続不要）。"""
from pathlib import Path
from html.parser import HTMLParser
from urllib.parse import urlparse

root = Path(__file__).resolve().parents[1]
public = root / 'docs'
class Links(HTMLParser):
    links = []
    def handle_starttag(self, tag, attrs):
        if tag == 'a':
            self.links.extend(v for k, v in attrs if k == 'href')
parser = Links()
parser.feed((public / 'index.html').read_text())
for href in parser.links:
    if urlparse(href).scheme or href.startswith('#'):
        continue
    target = (public / href).resolve()
    assert target.is_relative_to(public), f'公開範囲外のリンク: {href}'
    assert target.is_file(), f'リンク切れ: {href}'
for path in public.rglob('*'):
    if not path.is_file():
        continue
    assert path.suffix not in {'.md', '.tex', '.typ'}, f'制作ファイルの混入: {path}'
    assert path.name != '文献引用の方法について.pdf', '元資料PDFの混入'
    if path.suffix == '.pdf':
        assert path.read_bytes().startswith(b'%PDF-'), f'PDFではない: {path}'
        assert path.stat().st_size > 1000, f'空のPDF: {path}'
print('公開ファイル・ダウンロードリンク: OK')
