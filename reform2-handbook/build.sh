#!/bin/bash

while :
do inotifywait -e modify -r system-diagram.dot
dot -Tsvg system-diagram.dot -o system-diagram.svg
rsvg-convert -f pdf -o system-diagram.pdf system-diagram.svg
done

