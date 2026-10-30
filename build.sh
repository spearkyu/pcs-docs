#!/bin/sh
# iconx/docs 의 HTML을 공개용으로 복사 (문서 헤더·검색 차단 추가)
set -e
cd "$(dirname "$0")"
SRC=../iconx/docs
for d in work-order wiring; do
  mkdir -p "$d"
  { printf '<!doctype html>\n<html lang="ko">\n<meta charset="utf-8">\n<meta name="robots" content="noindex,nofollow">\n<style>body{margin:0}img{max-width:100%%}</style>\n'
    cat "$SRC/$d/index.html"; } > "$d/index.html"
done
