
alias c="code ./"

# Allow aliases to be sudu'd (literally no idea if this works tbh)
alias sudo="sudo "

alias ls='ls --color=auto --hyperlink'
alias la="ls -Ah"
alias ll="ls -lh"
alias lla="ls -Alh"

# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# uses fzf to preview files in a menu
alias preview="fzf --preview 'bat --color \"always\" {}'"

# Better version of du.
alias ncdu="ncdu --color dark -rr -x --exclude .git --exclude node_modules"

# Bind tldr to a better alias for me cause I can never spell it. Conflicts with fish's help but \help exits so doesn't matter
alias help="tldr"

# Refresh zsh (not very efficient but nice for quick testing)
alias refresh="clear;zsh"

# Refresh Wal back to the previous colour scheme
alias wal-refresh="command cat ~/.cache/wal/sequences; clear"

# Set terminal colour scheme to wallpaper
alias wal-set="wal -c -i ~/wallpaper.png"

# Kitty's icat 
alias icat="kitty +kitten icat"

# Kitty's clipboard
alias klip="kitty +kitten clipboard"

# TPLink Bulb commands
alias lamp1="pyhs100 --host 192.168.0.10"
alias lamp2="pyhs100 --host 192.168.0.11"

# Completion for work pass repo
compdef _pass autopass
zstyle ':completion::complete:autopass::' prefix "$HOME/Documents/Autonomic/infrastructure/credentials/password-store/"
alias autopass="PASSWORD_STORE_DIR=$HOME/Documents/Autonomic/infrastructure/credentials/password-store/ pass"
