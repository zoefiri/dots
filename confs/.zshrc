########################################################
#                                                      #
#  .zshrc                                       — ▭ ✖  #
#                                                      #
########################################################
#                                                      #
#      ,######,      ,##,     ,##,   ,##,     ,,       #
#   ,##########   ,#######    ####   ####     '##,     #
#   #'    ####'  .####''##    #####  ####       '##,   #
#     ,#####'    ###,          ###########        ;##  #
#    ####'       ##########,   ###########      ,##'   #
#   ##    ,###,   '#########    #####  ####   ,##'     #
#   ###########       ,#####     ####  '###   '        #
#    #####          #######'     '##'    ##  ######### #
#                                                      #
#                                         t. zoefiri   #
#                                                      #
########################################################


####################
#            — ▭ ✖ #
#  shell settings  #
####################
HISTFILE=~/.histfile
HISTSIZE=666
SAVEHIST=666
[ "$TERM" = "linux" ] && setterm -blength 0
setopt autocd
zstyle :compinstall filename '/home/zoe/.zshrc'
autoload -Uz compinit
autoload -U deer
compinit
xset b off
xset b 0 0 0



#####################
#             — ▭ ✖ #
#  enviroment vars  #
#####################
export FPATH=/usr/share/zsh/site-functions:/usr/share/zsh/functions/Completion:/usr/share/zsh/functions/Calendar:/usr/share/zsh/functions/Chpwd:/usr/share/zsh/functions/Exceptions:/usr/share/zsh/functions/Math:/usr/share/zsh/functions/MIME:/usr/share/zsh/functions/Misc:/usr/share/zsh/functions/Newuser:/usr/share/zsh/functions/Prompts:/usr/share/zsh/functions/TCP:/usr/share/zsh/functions/VCS_Info:/usr/share/zsh/functions/Zftp:/usr/share/zsh/functions/Zle:/usr/share/zsh/functions/Completion/Base:/usr/share/zsh/functions/Completion/Linux:/usr/share/zsh/functions/Completion/Unix:/usr/share/zsh/functions/Completion/X:/usr/share/zsh/functions/Completion/Zsh:/home/zoe/.zplug/base/core:/home/zoe/.fpath:$FPATH
export FPATH=$HOME/usr/share/zsh/5.7.1/functions:$FPATH
export PATH=/bin:/home/zoe/.local/bin:/home/zoe/.gem/ruby/2.6.0/bin:~/bin:$PATH:/usr/bin:/usr/local/bin:/home/zoe/.local/lib/python3.7/site-packages:/usr/share/java:/home/zoe/go/bin:/home/zoe/.cargo/bin:/home/zoe/bin
export GNUPGHOME=/home/zoe/.gnupg
export WINEPREFIX=/home/zoe/.wine
export WINEARCH=win64
export CLASSPATH="$CLASSPATH:/usr/share/java/*"
export FZF_DEFAULT_OPTS='--color fg:61,bg:0,bg+:63,info:2,query:61,prompt:61,pointer:2,prompt:3,hl:1'
#export PULSE_SERVER=/home/zoe/pulse/native
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR



############
#    — ▭ ✖ #
#  binds   #
############
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^ ' autosuggest-toggle
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode


#############
#     — ▭ ✖ #
#  styling  #
#############
if [ -z "$TMUX" ]
then
   for i in {1..7}; do
      echo -ne "\033]4;$((59+i));#$(<~/.config/ricer/ricertemplates/colors/base$i)\007"
   done
   i=15
   echo -ne "\033]4;67;#$(<~/.config/ricer/ricertemplates/colors/base$i)\007"
   echo -ne "\033]4;242;#$(<~/.config/ricer/ricertemplates/colors/base2)\007"
   #cat ~/dots/confs/palout
fi
zstyle ':completion:*' menu select
 ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=4



#############
#     — ▭ ✖ #
#  aliases  #
#############
#utils
   alias aj='autojump'
   alias nd='nv /dev/null'
   alias psync='adb push ~/.password-store /storage/emulated/0/.pass'
   alias perform='printf "$(cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor) -> " && echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
   alias psave='printf "$(cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor) -> " && echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
   alias cleanup='sync;sudo sysctl -w vm.drop_caches=3'
   alias xephdisp='Xephyr -br -ac -noreset -screen 1920x1080 :9'
   alias fze='nvim $(fzf)'
   alias fzn='cd $(fzf)'
   alias wcam='mpv --profile=low-latency -vf-add=hflip  av://v4l2:/dev/video0 '
   alias wiki='nvim /tmp/vimwiki -c ":VimwikiIndex"'
   alias sudo='doas'
#toys
   alias clitype='node ~/.local/share/clitype/app.js'
#fixes
   alias ranger='ranger ; pal -r'
   alias cava='cava && pal -r'
   alias tmux='TERM=screen-256color-bce tmux'
#dumb stuff
   alias fucking='sudo'
   alias pee='yes pee'
   alias shitdown='shutdown'
#shortcuts
   alias ydir='pwd | tr -d "\n" | xsel -ib'
   alias e='fzf --color info:4,prompt:3,spinner:3,pointer:2,marker:1 | xargs -r $EDITOR'
   alias task='clear ; printf "\n\e[1ms\e[31mh\e[32mi\e[33mt \e[34mt\e[35mo \e[36md\e[33mo\e[0m ✖ · · · ✖ \e[35m \e[34m \e[33m" ; task'
   alias wic='wicd-curses'
   alias hdmiout='xrandr --output HDMI-A-0 --off ; herbstclient detect_monitors'
   alias hdmi_in='xrandr --output HDMI-A-0 --right-of eDP --mode 1920x1080'
   alias rbook='rustup docs --book'
   alias ~='cd /home/zoe'
   alias /='cd /'
   alias reload='clear && source ~/.zshrc'
   alias slepp='locker && systemctl suspend'
   alias ncm='[ -z "$TMUX" ] && tmux new-session "~/.ncmpcpp/ncmpcpp-ueberzug/ncmpcpp-ueberzug 2>/dev/null" 1>/dev/null || ~/.ncmpcpp/ncmpcpp-ueberzug/ncmpcpp-ueberzug 2>/dev/null'
   alias ranger='[ -z "$TMUX" ] && tmux new-session "ranger 2>/dev/null" 1>/dev/null || ranger 2>/dev/null'
   alias gitgraph='git log --all --decorate --graph --oneline'
   alias gitlog='git log --all --decorate --graph'
   alias spotfix='pkill -9 spotify; rm -r ~/.cache/spotify'
   alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
#replacements
   alias ls='exa --icons'
#xbps
   alias vup="sudo xbps-install -Su"    # synchronize
   alias vps="xbps-query -Rs" # search
   alias vpi="sudo xbps-install -S" # install a single package or list of packages
   alias vpr="sudo xbps-remove" # remove a single package
   alias vpra="sudo xbps-remove -R" # remove a single package and all of its dependencies that are not required by other packages:
   alias vphan="sudo xbps-remove -o" # Remove dependencies that are no longer needed
   alias vpc="sudo xbps-remove -O" # Clean up all local caches.
##..
   alias -g ...='../..'
   alias -g ....='../../..'
   alias -g .....='../../../..'
   alias -g ......='../../../../..'



#############
#     — ▭ ✖ #
#  prompts  #
#############
setopt promptsubst

# •✖• prompt #
#PS1=$'%{\e[44;30m%}·%{\e[30m%}✖%{\e[30m%}.%{\e[34;42m%}▓▒░%{\e[40;32m%} %{\e[0m%} '

#  ✖  »»> prompt  #
#PS1=$'%{\e[30;44m%} ✖ %{\e[0;34m%} »»%{\e[32m%}>%{\e[0m%} '

#  multiliner prompt  #
#PS1=$'%{\e[32;1m%}%{\e[0m%}\n%{\e[30;44m%} %n%{\e[1m%}★ %{\e[0;30;44m%} @%M %{\e[42m%} %3~ %{\e[41m%} $(cat /sys/class/power_supply/BAT0/capacity)%{\e[1;32m%}🗲 \n%{\e[0;31m%}✖%{\e[32m%}✖%{\e[34m%}✖%{\e[36m%}✖%{\e[34m%}»» %{\e[0m%}'

# ✖ #
#PS1=$'%{\e[31m%}✖%{\e[0m%}  '

# rainbow #
#PS1=$'%{\e[30;41m%} x%{\e[32m%} %{\e[43m%}%{\e[34m%} %{\e[45m%}%{\e[45;36m%} %{\e[40m%}%{\e[0m%}  '
#PS1=$'%{\e[30;41m%} uwu %{\e[32m%} %{\e[43m%}%{\e[34m%} %{\e[45m%}%{\e[45;36m%} %{\e[40m%}%{\e[0m%}  '
#PS1=$'\n%{\e[30;41m%} uwu %{\e[32m%} %{\e[43m%}%{\e[34m%} %{\e[45m%}%{\e[45;36m%} %{\e[40m%}%{\e[0m%}\n%{\e[46;36m%}█%{\e[45m%}%{\e[34m%} %{\e[43m%}%{\e[32m%} %{\e[44m%}%{\e[40m%}%{\e[0m%}  '

# >_
# PS1=$'%{\e[32m%}>%{\e[1m%}%{\e[34m%}_ %{\e[0m%}'

# r o u n d  >
# PS1=$'\n%{\e[32m%}%{\e[42m%}%{\e[30m%} %{\e[0;32m%}%{\e[0m%} '

# angley
#PS1=$'\n%{\e[31m%}%{\e[40m%}%{\e[1m%} %{\e[30m%}%{\e[41m%}$USER >> %{\e[40m%}%{\e[31m%} %{\e[32m%} %{\e[31m%}%{\e[40m%} %{\e[30m%}%{\e[41m%}   %{\e[40m%}%{\e[31m%}%{\e[0m%} '
PS1=$'\n%{\e[31m%}%{\e[40m%}%{\e[1m%} %{\e[30m%}%{\e[41m%}$USER >> %{\e[40m%}%{\e[31m%} %{\e[32m%} %{\e[31m%}%{\e[40m%} %{\e[30m%}%{\e[41m%}   %{\e[40m%}%{\e[31m%}%{\e[0m%} '

##############################
#                      — ▭ ✖ #
#  shell addons and plugins  #
##############################
if [ -z $RCINITED ]
then

#  plugins  #
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-system-clipboard/zsh-system-clipboard.zsh
source ~/.zsh/z/z.sh
source ~/.zsh/fz/fz.plugin.zsh
source ~/.zsh/zsh-sudo/sudo.plugin.zsh
source ~/.zsh/file_icons
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plug.zsh
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh 

#  fff  #
f(){ fff "$@"; cd "$(< ~/.fff_d)"; }
export FFF_CD_FILE=~/.fff_d

# rgtarget #
rgt() {
   file="$(rg --hidden -l $1 | sk --preview='bat {} --color=always')"
   read program
   [ -z "$program" ] && echo $file 
   [ ! -z "$program" ] && "$program" "$file"
}

rj() {
   file="$(fd $1 | sk --preview='exa --icons -la {}')"
   [ -d "$file" ] && cd $file
   [ ! -d "$file" ] && not dir && cd ${file%/*}
}

# cht.sh #
ch(){
   read -r query
   cht.sh "$query" | less -r
}

#  mup  #
mup() {
   mupdf $1 & disown
   exit
}

#  xeph  #
xeph(){
   Xephyr -br -ac -noreset -screen 1920x1080 :4 &
   sleep 2 
   DISPLAY=:4 dwm
}

# nvim tmux #
#nv() {
#   extension=${1##*.}
#   if [[ -z "$TMUX" ]]; then
#      TERM=screen-256color tmux new-session "TERM=screen-256color nvim $1;" 1>/dev/null
#   elif [[ ! -z "$TMUX"  &&  -z $1 ]]; then
#      TERM=screen-256color nvim
#   elif [[ ! -z "$TMUX" ]]; then
#      TERM=screen-256color nvim "$1"
#   fi
#}

#  the fuck?  #
eval $(thefuck --alias)

#  w3m img  #
w3mimg () { w3m -o imgdisplay=/usr/lib/w3m/w3mimgdisplay $1
}

#  fetchy  #
fetchy() {
   mimfetch
}
zle -N fetchy
bindkey '^H' fetchy

#  deer  #
zle -N deer
bindkey '^N' deer

#  micloop  #
micloop () { 
   [ "$1" = 1 ] && pactl load-module module-loopback latency_msec=150
   [ "$1" = 0 ] && pactl unload-module module-loopback
}


#####################
#             — ▭ ✖ #
#  resize terminal  #
#####################
#ID=$(xdotool getactivewindow)
#herbstclient pseudotile toggle
#xdotool windowsize $ID 600 400

fi


#############
#     — ▭ ✖ #
#  Greeter  #
#############
clear
cat ~/.zsh/art
printf "\n"
unset zle_bracketed_paste
RCINITED=1



################
#        — ▭ ✖ #
#  start tmux  #
################
#[ -z $TMUX ] && [ ! -z $DISPLAY ] && tmux
unset zle_bracketed_paste

[ -f "/home/zoe/.ghcup/env" ] && source "/home/zoe/.ghcup/env" # ghcup-env
