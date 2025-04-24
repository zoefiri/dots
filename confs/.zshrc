##################################
# 🞺 .zshrc by zoefiri      — ▭ ✖ #
##################################
# ✧ ･  ˚ ･ ✧   ･  ˚  ,     ･ ✧   #
#･  ✧      ˚   ✧      ##    ✧ ･  #
#      ˚         ,##'  '## ###,✧ #
#   ･    #####,  #,      '##  #' #
#✧    ˚,####''## '####,   '##    #
#  ✧  ####'  ,##    '###,        #
#   ###'     ##        ##     ✧  #
#  ###     ,##    '####'     ･   #
#  ##     ###      ,      ･ ✧    #
#  ✧     ###      #   ✧  ･   ･   #
# ･    ,###      #   ･  ✧     ˚  # 
#     ,###      #   ✧      ˚     #
#    ####     ##  ･    ･         #
# ✧  '####,,###      ✧    ˚      #
#   ･  '######   ✧  ･     ✧    ˚ #
#   ˚   ･   ˚   ･˚            ˚  #
##################################

zstyle :compinstall filename "$HOME/.zshrc"
echo ur cute

fpath=( /Users/zoechamlee/.zsh/comps $fpath )

autoload -Uz compinit
compinit
alias compinit="echo no more compinit!"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

#########
##xxxxx##
#########

#x# envvars #x#
###
### editor 
EDITOR="nvim"
GIT_EDITOR="$EDITOR"
###
### fzf customization (just theming atm) (it's actually sk but there's a fzf symlink in /bin :D)
export SKIM_DEFAULT_OPTIONS='--color info:4,prompt:3,spinner:3,pointer:2,marker:1'
export FZF_DEFAULT_OPTS='--color info:4,prompt:3,spinner:3,pointer:2,marker:1'
###
### custom $PAGER. `moar` is pretty nice 
PAGER="nvimpager"
export GROFF_NO_SGR=1 # manpage coloration

#########
##xxxxx##
#########

#x# setup #x#
### PATH
PATH=$PATH:$HOME/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/building/flutter/flutter/bin:$HOME/go/bin:/opt/homebrew/bin
### 
### 
### 
### 
### 
### 
#x########x#
############

#########
##xxxxx##
#########

#x# aalias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"liases #x#
###
### neovim
alias nv='nvim'
###
### coreutil subs
alias ls='exa --icons'
alias cp='xcp'
###
### xbps
alias vup="sudo xbps-install -Su"    # synchronize
alias vps="xbps-query -Rs" # search
alias vpi="sudo xbps-install -S" # install a single package or list of packages
alias vpr="sudo xbps-remove" # remove a single package
alias vpra="sudo xbps-remove -R" # remove a single package and all of its dependencies that are not required by other packages:
alias vphan="sudo xbps-remove -o" # Remove dependencies that are no longer needed
alias vpc="sudo xbps-remove -O" # Clean up all local caches.
###
### util
alias wcam='mpv --profile=low-latency --untimed av://v4l2:/dev/video0'
alias pstopped='ps -A -o stat,command,pid | grep "^T"'
alias xeph='Xephyr -br -ac -noreset -resizeable'
alias xeph4='Xephyr -br -ac -noreset -resizeable -screen 2256x1504 :4'
alias xephold='Xephyr -br -ac -noreset -screen 2256x1504 :9'
alias xeph_custom='Xephyr -br -ac -noreset -screen'
alias midipatch='qpwgraph -ax .default.qpwgraph ; sleep 1 ; pkill qpwgraph'
alias kcli='kdeconnect-cli -d 743a64cb_cd60_4773_b19b_d3a3b15cc97c'
alias kclip='kdeconnect-cli -d 743a64cb_cd60_4773_b19b_d3a3b15cc97c --send-clipboard'
###
### theming
alias sudo='$HOME/bin/sudo'
###
### wrap
alias ncm='[ -z "$TMUX" ] && tmux new-session "$HOME/.ncmpcpp/ncmpcpp-ueberzug/ncmpcpp-ueberzug" || $HOME/.ncmpcpp/ncmpcpp-ueberzug/ncmpcpp-ueberzug'
alias lf='\lfrun'
alias cd='jb'
alias qrcp='qrcp -i wlp1s0'
###
### git
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
###
### cargo
alias crgs="cargosparse"
###
### scaling governors
alias perform='printf "$(cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor) -> " && sudo echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias psave='printf "$(cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor) -> " && sudo echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
### 
### rbw
alias pwlist='rbw list'
###
### shortcuts
alias gf='firefox /home/zoe/library/taoism/tsotgf-web/thesecretofthegoldenflower.com/index.html'
alias ttc='firefox /home/zoe/library/taoism/ttc_anarcho.pdf'
alias pb='curl -F "c=@-" "https://fars.ee/?u=1"'


#########
##xxxxx##
#########

#x# prompt #x#
###
### peace!
# PS1=$'\n%{\e[31m%}%{\e[0;1m%}%{\e[1;31m%} %{\e[30m%}%{\e[41m%}zoe ❯❯ %{\e[0;1m%}%{\e[31m%} %{\e[32m%} %{\e[31m%}%{\e[0;1;31m%} %{\e[30m%}%{\e[41m%}   %{\e[0;1m%}%{\e[31m%}%{\e[0m%} '
###
### starship!!!
eval "$(starship init zsh)"
###

#########
##xxxxx##
#########

#x# colors #x#
###
###
# if [ -z "$TMUX" ]
# then
#    for i in {1..7}; do
#       echo -ne "\033]4;$((59+i));#$(<~/.config/ricer/ricertemplates/colors/base$i)\007"
#    done
#    i=15
#    echo -ne "\033]4;67;#$(<~/.config/ricer/ricertemplates/colors/base$i)\007"
#    echo -ne "\033]4;242;#$(<~/.config/ricer/ricertemplates/colors/base2)\007"
#    #cat ~/dots/confs/palout
# fi
if [ -z "$TMUX" ]
then
   echo -ne "\033]4;59;#101413\007"
   echo -ne "\033]4;60;#1A2624\007"
   echo -ne "\033]4;61;#20392D\007"
   echo -ne "\033]4;62;#214D36\007"
   echo -ne "\033]4;63;#eff69c\007"
   echo -ne "\033]4;64;#FFF3CF\007"
   echo -ne "\033]4;65;#FFFDED\007"
   echo -ne "\033]4;66;#FFF3CF\007"

   # echo -ne "\033]4;7;#FBE200\007"
   echo -ne "\033]4;7;#FFF3CF\007"
   echo -ne "\033]4;8;#FB0D3C\007"
fi

zstyle ':completion:*' menu select
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=4

#########
##xxxxx##
#########

#x# plugins #x#
###
###
source $HOME/.zsh/z/zsh-z.plugin.zsh
source $HOME/.zsh/set_exa.zsh

source $HOME/.zsh/fzf-tab-completion/zsh/fzf-zsh-completion.sh

source $HOME/.zsh/zle-fzf/zle-fzf.plugin.zsh
source $HOME/.config/envman/alias.env

#########
##xxxxx##
#########

#x# funcs #x#
###
###

pw() {
    rbw get --clipboard $(echo "$@" | sed -e 's/.*dir\/\/ \([a-zA-Z0-9/$._-]*\)/--folder \1/' -e 's/. pw\/\/ \([a-zA-Z0-9/$._-]*\)/\1/')
    $(sleep 60; echo ' ' | xsel -ib) &
}

jb() {
   [ ! -f "$HOME/.zsh/jbhist.log" ] && touch ~/.zsh/jbhist.log
   if [ -z "$@" ] 
   then
      dir="$(cat ~/.zsh/jbhist.log | tail -100 | sk)"
      \cd "$dir"
      return
   fi

   echo "$(realpath $@)" >> ~/.zsh/jbhist.log
   \cd "$@"
}
zle -N jb_widget jb 

aman() {
   aliasman "$@"; source $HOME/.config/envman/alias.env
}

setgov() {
    echo "$1" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor 
}

#########
##xxxxx##
#########

#x# keybindis #x#
###
### fzf_completion tab bind
bindkey '^I' fzf_completion
###
### adds normal expand/complete back in on ctrl-space
bindkey '^ ' expand-or-complete
###
### jb dirjumper thing
bindkey '^k' jb_widget
###
### zle-fzf - quoted output
bindkey '^X' _fuzzy-insert-filename-quoted
### zle-fzf - unquoted output
bindkey '^[x' _fuzzy-insert-filename
###


#########
##xxxxx##
#########

#x# greeter #x#
###
###
cat ~/.zsh/art

#x# auto-tmux #x#
###
###
[ -z "$TMUX" ] && [ ! -z "$DISPLAY" ] && echo $PPID > /tmp/termPID && tmux
[ ! -z "$TMUX" ] && [ ! -z "$DISPLAY" ] && auto_tmux

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


#########
##xxxxx##
#########

#x# completions #x#
###
###
cmd_completion_pws() {
  local -a arguments

  pws="$(rbw list --fields folder,name | sed -e 's/^\t/ pw\/\/ /' -e 's/^\([a-zA-Z0-9/$._-]*\)\t/ dir\/\/ \1  pw\/\/ /')"

  arguments=("${(@f)pws}")

  _arguments \
    '*: :(( ${arguments[@]} ))' 
}

compdef cmd_completion_pws pw

#x# man coloration #x#
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;32m") \
        LESS_TERMCAP_me=$(printf "\e[33m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;40;30m") \
        LESS_TERMCAP_ue=$(printf "\e[33m") \
        LESS_TERMCAP_us=$(printf "\e[1;37m") \
            man "$@"
}


dot() {
   $(cat config/egds_qa.env | xargs printf -- 'export %s\n')
}

#x# tmux window icons #x#
function set_tmux_icon() { tmux rename-window "$(get_prog_icon.sh $1)" }
function unset_tmux_icon() { tmux rename-window "" }

typeset -a precmd_functions
typeset -a preexec_functions

preexec_functions+=(set_tmux_icon)
precmd_functions+=(unset_tmux_icon)

setcolors() {
   if [ -z "$TMUX" ]
   then
      echo -ne "\033]4;59;#101413\007"
      echo -ne "\033]4;60;#1A2624\007"
      echo -ne "\033]4;61;#20392D\007"
      echo -ne "\033]4;62;#214D36\007"
      echo -ne "\033]4;63;#eff69c\007"
      echo -ne "\033]4;64;#FFF3CF\007"
      echo -ne "\033]4;65;#FFFDED\007"
      echo -ne "\033]4;66;#FFF3CF\007"

      # echo -ne "\033]4;7;#FBE200\007"
      # echo -ne "\033]4;8;#FB0D3C\007"
   fi
}
