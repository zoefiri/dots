#!/usr/bin/env bash

prog="$(echo $1 | cut -d ' ' -f 1)"

declare -A prog_icons

prog_icons["nv"]=""
prog_icons["rmpc"]="󰎌"
prog_icons["ncm"]="󰎌"
prog_icons["ncmpcpp"]="󰎌"

icon="${prog_icons["$prog"]}"

[ ! -z "$icon" ] && printf "$icon"
[ -z "$icon" ] && printf "$prog"
