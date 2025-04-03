#!/bin/zsh

fattr_cols='
fi=7
di=63
or=66
ln=3
'

ftype_cols='
mp4=202
mov=203
webm=204
iso=71
zip=72
rar=73
tar.xz=74
pdf=64
jpg=214
png=220
'

fmt_cols() {
   echo $1 | sed -e 's/=\([0-9]*\)/=38;5;\1/g' | tr '\n' ':'
}

export EXA_COLORS="$(fmt_cols $fattr_cols)""$(fmt_cols $ftype_cols | sed -e 's/\([a-zA-Z0-9]*\)=/*\1=/g')"
