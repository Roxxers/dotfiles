# Allow aliases to be sudu'd
alias sudo="sudo "

alias ls='ls --color=auto'
alias lsa="ls -a"

# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Better version of cat. Has search and highlighting.
alias cat='bat'

# uses fzf to preview files in a menu
alias preview="fzf --preview 'bat --color \"always\" {}'"

# Better version of du.
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"

# Bind tldr to a better alias for me cause I can never spell it. Conflicts with fish's help but \help exits so doesn't matter
alias help="tldr"

# Refresh fish (Atm this is a function soon to be depreciated so its just here so I can keep it)
alias refresh="fish"

# Refresh Wal back to the previous colour scheme
alias wal-refresh="command cat ~/.cache/wal/sequences; clear"

# Set terminal colour scheme to wallpaper
alias wal-set="wal -c -i ~/wallpaper.png"
