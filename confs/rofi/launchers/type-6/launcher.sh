#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5
## style-6     style-7     style-8     style-9     style-10

dir="$HOME/.config/rofi/launchers/type-6"
theme='style-1'

roficmd="rofi -theme ${dir}/${theme}.rasi"


CURRENT_TAG="$(herbstclient attr tags.focus.name)"
herbstclient use rofispace

## Run
[ -z "$1" ] && $roficmd -show drun 
[ "$1" = "greenclip" ] && $roficmd -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}' 
echo $roficmd

herbstclient use "$CURRENT_TAG"
