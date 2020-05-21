#!/bin/bash

while :
do inotifywait -e modify -r *.dot *.md
dot -Tsvg system-diagram.dot -o system-diagram.svg
rsvg-convert -f pdf -o system-diagram.pdf system-diagram.svg
kramdown system.md >system.html
done

