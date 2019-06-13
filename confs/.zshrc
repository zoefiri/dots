########################################################
#                                                      #
#  .zshrc by zoe firi                           — ▭ ✖  #
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
########################################################



####################
#            — ▭ ✖ #
#  shell settings  #
####################
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
[ "$TERM" = "linux" ] && setterm -blength 0
setopt autocd
zstyle :compinstall filename '/home/zoe/.zshrc'
autoload -Uz compinit
compinit
xset b off
xset b 0 0 0



#####################
#             — ▭ ✖ #
#  enviroment vars  #
#####################
export FPATH=/usr/share/zsh/site-functions:/usr/share/zsh/functions/Completion:/usr/share/zsh/functions/Calendar:/usr/share/zsh/functions/Chpwd:/usr/share/zsh/functions/Exceptions:/usr/share/zsh/functions/Math:/usr/share/zsh/functions/MIME:/usr/share/zsh/functions/Misc:/usr/share/zsh/functions/Newuser:/usr/share/zsh/functions/Prompts:/usr/share/zsh/functions/TCP:/usr/share/zsh/functions/VCS_Info:/usr/share/zsh/functions/Zftp:/usr/share/zsh/functions/Zle:/usr/share/zsh/functions/Completion/Base:/usr/share/zsh/functions/Completion/Linux:/usr/share/zsh/functions/Completion/Unix:/usr/share/zsh/functions/Completion/X:/usr/share/zsh/functions/Completion/Zsh:/home/zoe/.zplug/base/core:$FPATH
export FPATH=$HOME/usr/share/zsh/5.7.1/functions:$FPATH
export PATH=/bin:/home/zoe/.local/bin:/home/zoe/.gem/ruby/2.6.0/bin:~/PATHcustom:$PATH:/usr/bin:/usr/local/bin:/home/zoe/.local/lib/python3.7/site-packages:/usr/share/java:/home/zoe/go/bin
export GNUPGHOME=/home/zoe/.gnupg
export WINEARCH=win64
export WINEPREFIX=/home/zoe/.wine
export CLASSPATH="$CLASSPATH:/usr/share/java/*"
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR



############
#    — ▭ ✖ #
#  binds   #
############
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^ ' autosuggest-toggle
bindkey -v


#############
#     — ▭ ✖ #
#  styling  #
#############
#echo -ne "\\ePtmux;\\e\\033]4;60;#202538\\007\\e\\\\"
echo -ne "\033]4;60;#202538\007"
zstyle ':completion:*' menu select
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=4
    #pal -r
    pal ~/dots/confs/palcolors



#############
#     — ▭ ✖ #
#  aliases  #
#############
alias task='clear ; printf "\n\e[1ms\e[31mh\e[32mi\e[33mt \e[34mt\e[35mo \e[36md\e[33mo\e[0m ✖ · · · ✖ \e[35m \e[34m \e[33m" ; task'
alias e='fzf --color info:4,prompt:3,spinner:3,pointer:2,marker:1 | xargs -r $EDITOR'
alias record='ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0'
alias icat="kitty +kitten icat --align left"
#alias tmux='TERM=xterm-256color tmux'
alias wic='wicd-curses'
alias hdmiout='xrandr --output HDMI1 --off ; herbstclient detect_monitors'
alias maim='maim'
alias cava='cava && pal -r'
alias pee='yes pee'
alias ls='exa'
alias aj='autojump'
alias rbook='rustup docs --book'
alias concu='connman-ncurses ; stty sane'
alias wal='wal -st -i'
alias discss='mousepad ~/.cache/wal-discord/style.css'
alias ~='cd /home/zoe'
alias /='cd /'
alias reload='clear && source ~/.zshrc'
alias slepp='locker && systemctl suspend'
alias ncm='ncmpcpp'
alias nixnest='birch -u zoefiri -s irc.rizon.net -c #nixnest'
alias shitdown='shutdown'
alias fucking='sudo'
alias nv='nvim'
alias cleanup='sync;sudo sysctl -w vm.drop_caches=3'
alias perform='sudo echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias psave='sudo echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'



#############
#     — ▭ ✖ #
#  prompts  #
#############
setopt promptsubst

# •✖• prompt #
PS1=$'%{\e[1;44;30m%}·%{\e[1;30m%}✖%{\e[1;30m%}.%{\e[34;42m%}▓▒░%{\e[40;32m%} %{\e[0m%} '

#  ✖  »»> prompt  #
#PS1=$'%{\e[30;44m%} ✖ %{\e[0;34m%} »»%{\e[32m%}>%{\e[0m%} '

#  multiliner prompt  #
#PS1=$'%{\e[32;1m%}%{\e[0m%}\n%{\e[30;44m%} %n%{\e[1m%}★ %{\e[0;30;44m%} @%M %{\e[42m%} %3~ %{\e[41m%} $(cat /sys/class/power_supply/BAT0/capacity)%{\e[1;32m%}🗲 \n%{\e[0;31m%}✖%{\e[32m%}✖%{\e[34m%}✖%{\e[36m%}✖%{\e[34m%}»» %{\e[0m%}'



##############################
#                      — ▭ ✖ #
#  shell addons and plugins  #
##############################
if [ -z $RCINITED ]
then

#  fff  #
f(){ fff "$@"; cd "$(< ~/.fff_d)"; }
export FFF_CD_FILE=~/.fff_d

#  the fuck?  #
eval $(thefuck --alias)

#  w3m img  #
w3mimg () { w3m -o imgdisplay=/usr/lib/w3m/w3mimgdisplay $1
}

# 0x0.st upload #
up(){
    curl -F"file=@$1" http://0x0.st | xsel -i -b
}

upn(){
    curl -X POST https://upload.nixne.st/image -H "Upload-Key: da52089b4eb6093bca7de39c1e7d0866" -F "uploadFile=@$1"
}

#  plugins  #
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-system-clipboard/zsh-system-clipboard.zsh
source ~/.zsh/z/z.sh
source ~/.zsh/fz/fz.plugin.zsh
source ~/.zsh/zsh-vimto/zsh-vimto.zsh
source ~/.zsh/zsh-sudo/sudo.plugin.zsh


#####################
#             — ▭ ✖ #
#  resize terminal  #
#####################
ID=$(xdotool getactivewindow)
herbstclient pseudotile toggle
xdotool windowsize $ID 600 400

fi



#############
#     — ▭ ✖ #
#  Greeter  #
#############
clear
cat ~/art/ASCII/colorized/daisysmooth
printf "\n"
RCINITED=1



################
#        — ▭ ✖ #
#  start tmux  #
################
#[ -z $TMUX ] && [ ! -z $DISPLAY ] && tmux



