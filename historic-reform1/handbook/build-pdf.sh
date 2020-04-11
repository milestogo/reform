#!/bin/bash
set -xe
make latexpdf
pdftk A=reform-handbook-cover.pdf B=build/latex/Reform.pdf cat A1 B2-end output reform-handbook.pdf

