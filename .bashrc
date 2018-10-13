#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR="nano"

# Better version of cat. Has search and highlighting.
alias cat='bat'

# uses fzf to preview files in a menu
alias preview="fzf --preview 'bat --color \"always\" {}'"

# Better version of du.
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"

# Bind tldr to a better alias for me cause I can never spell it. Conflicts with fish's help but \help exits so doesn't matter
alias help="tldr"
