# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Test for AUR omz install to point to
case `pacman -Qe | grep "oh-my-zsh" >/dev/null; echo $?` in
  0)
    # code if found
    export ZSH="/usr/share/oh-my-zsh"
    ;;
  1)
    # code if not found
    export ZSH="${HOME}/.oh-my-zsh"
    ;;
  *)
    # code if an error occurred
    export ZSH="${HOME}/.oh-my-zsh"
    ;;
esac


# Themes
#ZSH_THEME="roxiepeabody"

ZSH_THEME=powerlevel10k/powerlevel10k

export QT_QPA_PLATFORMTHEME="qt5ct"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM="$HOME/.omz_custom"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	archlinux
	go
	golang
	git
	pip
	pipenv
	pylint
	python
	sudo
	systemd
  virtualenvwrapper
	zsh-completions
	zsh-autosuggestions
	zsh-history-substring-search 
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'

# User configuration

autoload -Uz compinit
compinit
# Completion for kitty
if which kitty > /dev/null; then 
	kitty + complete setup zsh | source /dev/stdin
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# added by travis gem
[ -f /home/roxie/.travis/travis.sh ] && source /home/roxie/.travis/travis.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
