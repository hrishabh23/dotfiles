#
# ~/.bashrc
#

set -o vi
set show-mode-in-prompt on

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Define colours
GREEN="\[$(tput setaf 2)\]"
BLUE="\[$(tput setaf 4)\]"
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

# Aliases
alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias :q='exit'
alias :Q='exit'
alias :x='exit'

# Prompt Customization
PS1="[${GREEN}${BOLD}\u@\h${RESET} ${BLUE}\w${RESET}]\$ "

# Auto 'cd' when just entered the path
shopt -s autocd
# Line wrap on window resize
shopt -s checkwinsize
