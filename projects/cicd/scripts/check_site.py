from pathlib import Path
from html.parser import HTMLParser

class Checker(HTMLParser):
    def __init__(self):
        super().__init__()
        self.tags = set()
    def handle_starttag(self, tag, attrs):
        self.tags.add(tag)

page = Path(__file__).resolve().parents[1] / "site" / "index.html"
checker = Checker()
checker.feed(page.read_text(encoding="utf-8"))
assert {"html", "head", "title", "body", "main", "h1"} <= checker.tags, "Missing required HTML elements"
print("PASS: static HTML smoke test")
