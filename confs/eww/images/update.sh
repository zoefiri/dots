#!/bin/bash
bg="$1"
fg="$2"
mainbg="$3"

cp .bak/*.svg .
sed -i *.svg -e 's/000000/'"$bg"'/' -e 's/FFFFFF/'"$fg"'/' -e 's/ffffff/'"$fg"'/' -e 's/182F41/'"$mainbg"'/' -e 's/182f41/'"$mainbg"'/' 
