#!/bin/bash

function build {
  dot -Tsvg system-diagram.dot -o system-diagram.svg
  rsvg-convert -f pdf -o system-diagram.pdf system-diagram.svg
  kramdown system.md >system.html
}

build

while :
do inotifywait -e modify -r *.dot *.md
  build
done

