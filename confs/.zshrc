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



#####################
#             — ▭ ✖ #
#  enviroment vars  #
#####################
export FPATH=/usr/share/zsh/site-functions:/usr/share/zsh/functions/Completion:/usr/share/zsh/functions/Calendar:/usr/share/zsh/functions/Chpwd:/usr/share/zsh/functions/Exceptions:/usr/share/zsh/functions/Math:/usr/share/zsh/functions/MIME:/usr/share/zsh/functions/Misc:/usr/share/zsh/functions/Newuser:/usr/share/zsh/functions/Prompts:/usr/share/zsh/functions/TCP:/usr/share/zsh/functions/VCS_Info:/usr/share/zsh/functions/Zftp:/usr/share/zsh/functions/Zle:/usr/share/zsh/functions/Completion/Base:/usr/share/zsh/functions/Completion/Linux:/usr/share/zsh/functions/Completion/Unix:/usr/share/zsh/functions/Completion/X:/usr/share/zsh/functions/Completion/Zsh:/home/zoe/.zplug/base/core:$FPATH
export FPATH=$HOME/usr/share/zsh/5.7.1/functions:$FPATH
export PATH=/bin:/home/zoe/.gem/ruby/2.6.0/bin:~/PATHcustom:$PATH:/usr/bin:/usr/local/bin:/home/zoe/.local/lib/python3.7/site-packages:/usr/share/java:/home/zoe/go/bin
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



#############
#     — ▭ ✖ #
#  styling  #
#############
echo -ne "\\ePtmux;\\e\\033]4;60;#20253a\\007\\e\\\\ \\ePtmux;\\e\\033]4;61;#27394f\\007\\e\\\\ \\ePtmux;\\e\\033]4;62;#346d77\\007\\e\\\\ \\ePtmux;\\e\\033]4;63;#3ea088\\007\\e\\\\"
zstyle ':completion:*' menu select
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=4
pal -r



#############
#     — ▭ ✖ #
#  aliases  #
#############
alias tmux='TERM=xterm-256color tmux'
alias wic='wicd-curses'
alias hdmiout='xrandr --output HDMI1 --off ; herbstclient detect_monitors'
alias maim='maim'
alias cava='cava && pal -r'
alias pee='yes pee'
alias ls='exa'
alias aj='autojump'
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
PS1=$'%{\e[32m%}•%{\e[0;34m%}✖%{\e[32m%}•%{\e[0m%} '

#  ✖  »»> prompt  #
    #PS1=$'%{\e[30;44m%} ✖ %{\e[0;34m%} »»%{\e[32m%}>%{\e[0m%} '

#  multiliner prompt  #
    #PS1=$'%{\e[32;1m%}%{\e[0m%}\n%{\e[30;44m%} %n%{\e[1m%}★ %{\e[0;30;44m%} @%M %{\e[42m%} %3~ %{\e[41m%} $(cat /sys/class/power_supply/BAT0/capacity)%{\e[1;32m%}🗲 \n%{\e[0;31m%}✖%{\e[32m%}✖%{\e[34m%}✖%{\e[36m%}✖%{\e[34m%}»» %{\e[0m%}'



##############################
#                      — ▭ ✖ #
#  shell addons and plugins  #
##############################
#  autojump  #
	[[ -s /home/zoe/.autojump/etc/profile.d/autojump.sh ]] && source /home/zoe/.autojump/etc/profile.d/autojump.sh
	
#  fff  #
	f(){ fff "$@"; cd "$(< ~/.fff_d)"; }
	export FFF_CD_FILE=~/.fff_d
	
#  the fuck?  #
	eval $(thefuck --alias)
	
#  plugins  #
	source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
	source ~/.zsh/zsh-system-clipboard/zsh-system-clipboard.zsh
	source ~/.zsh/z/z.sh
	source ~/.zsh/fz/fz.plugin.zsh
	source ~/.zsh/zsh-vimto/zsh-vimto.zsh
	source ~/.zsh/zsh-sudo/sudo.plugin.zsh



#############
#     — ▭ ✖ #
#  Greeter  #
#############
clear
daisy



################
#        — ▭ ✖ #
#  start tmux  #
################
[ -z $TMUX ] && [ ! -z $DISPLAY ] && tmux
