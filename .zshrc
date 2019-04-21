#Shell settings
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export FPATH=/usr/share/zsh/site-functions:/usr/share/zsh/functions/Completion:/usr/share/zsh/functions/Calendar:/usr/share/zsh/functions/Chpwd:/usr/share/zsh/functions/Exceptions:/usr/share/zsh/functions/Math:/usr/share/zsh/functions/MIME:/usr/share/zsh/functions/Misc:/usr/share/zsh/functions/Newuser:/usr/share/zsh/functions/Prompts:/usr/share/zsh/functions/TCP:/usr/share/zsh/functions/VCS_Info:/usr/share/zsh/functions/Zftp:/usr/share/zsh/functions/Zle:/usr/share/zsh/functions/Completion/Base:/usr/share/zsh/functions/Completion/Linux:/usr/share/zsh/functions/Completion/Unix:/usr/share/zsh/functions/Completion/X:/usr/share/zsh/functions/Completion/Zsh:/home/zoe/.zplug/base/core:$FPATH

# The following lines were added by compinstall
zstyle :compinstall filename '/home/zoe/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
export FPATH=$HOME/usr/share/zsh/5.7.1/functions:$FPATH
export PATH=/bin:/home/zoe/.gem/ruby/2.6.0/bin:~/PATHcustom:$PATH:/usr/bin:/usr/local/bin:/home/zoe/.local/lib/python3.7/site-packages:/usr/share/java:/home/zoe/go/bin
export GNUPGHOME=/home/zoe/.gnupg
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
#bindkey -M vicmd
export WINEARCH=win64
export WINEPREFIX=/home/zoe/.wine
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR
pal -r
[ "$TERM" = "linux" ] && setterm -blength 0

#aliases
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

#Java classpath stuff
export CLASSPATH="$CLASSPATH:/usr/share/java/*"

	setopt promptsubst
	PS1=$'%{\e[32m%}•%{\e[0;34m%}✖%{\e[32m%}•%{\e[0m%} '
	#PS1=$'%{\e[30;44m%} ✖ %{\e[0;34m%} »»%{\e[32m%}>%{\e[0m%} '
	#PS1=$'%{\e[32;1m%}%{\e[0m%}\n%{\e[30;44m%} %n%{\e[1m%}★ %{\e[0;30;44m%} @%M %{\e[42m%} %3~ %{\e[41m%} $(cat /sys/class/power_supply/BAT0/capacity)%{\e[1;32m%}🗲 \n%{\e[0;31m%}✖%{\e[32m%}✖%{\e[34m%}✖%{\e[36m%}✖%{\e[34m%}»» %{\e[0m%}'

#Shell application settings and other lines
	#autojump
	[[ -s /home/zoe/.autojump/etc/profile.d/autojump.sh ]] && source /home/zoe/.autojump/etc/profile.d/autojump.sh
	
	#fff
	f(){ fff "$@"; cd "$(< ~/.fff_d)"; }
	export FFF_CD_FILE=~/.fff_d
	
	#the fuck?
	eval $(thefuck --alias)
	
	#zplug
	#export ZPLUG_HOME=/home/zoe/.zplug
	#source ~/.zplug/init.zsh
	source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
	source ~/.zsh/zsh-system-clipboard/zsh-system-clipboard.zsh
	#source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
	source ~/.zsh/z/z.sh
	source ~/.zsh/fz/fz.plugin.zsh
	source ~/.zsh/zsh-vimto/zsh-vimto.zsh
	source ~/.zsh/zsh-sudo/sudo.plugin.zsh

	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=4
	bindkey '^ ' autosuggest-toggle
	zplug load

#Greeter
clear
daisy



