#!/bin/bash

fs=$(find -iname '*.pdf')
word=0
page=0

for f in $fs
do
    w=$(pdftotext $f - | wc -w)
    p=$(pdfinfo $f | awk '/^Pages:/ {print $2}')
    word=$((word + w))
    page=$((page + p))
done

echo -n $word > _includes/word.html
echo -n $page > _includes/page.html
