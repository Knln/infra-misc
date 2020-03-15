# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kevinl/.oh-my-zsh"
ZSH_THEME="random"
CASE_SENSITIVE="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

# Migration from bash
export EDITOR=vim

HISTSIZE=100000
HISTFILESIZE=10000000

# Aliases
alias lt='ls -lahtrs'
alias ls='ls -lah'
alias grep='grep -E --color'
alias gerp='grep -E --color'
alias lo='exit'
alias rm='rm -i'
alias ports='ss -tulanp'
alias python='python3'

alias ..='cd ..'
alias ..='cd../..'
alias ...='cd../../..'
alias ....='cd../../../..'
alias .....='cd../../../../..'

# Functions

function extract() {
  if [ -f $1 ];
  then
    case $1 in
      *.tar.bz2) tar xvjf $1;;
      *.tar.gz) tar xvzf $1;;
      *.bz2) bunzip2 $1;;
      *.gz) gzip -d $1;;
      *.rar) tar xvf $1;;
      *.tbz2) tar xvjf $1;; 
      *.tgz) tar xvzf $1;;
      *.zip) unzip $1;;
      *.Z) uncompress $1;;
      *.7z) 7z x $1;;
      *) echo "Unknown file type" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
