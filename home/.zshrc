# ZSH Config for Roxie uwu

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# SET OH_MY_ZSH INSTALL LOCATION

# Check if this is a Arch-based system
if command -v pacman >/dev/null; then  
	# Test for AUR omz install to point to`
	case `pacman -Qe | grep "oh-my-zsh" >/dev/null; echo $?` in
   0)
     # code if found
     export ZSH="/usr/share/oh-my-zsh"
     ;;
   1)
     # code if not found
     export ZSH="${HOME}/.oh-my-zsh"
     ;;
 esac
else
	# Not an arch based system, default to the normal install
  export ZSH="${HOME}/.oh-my-zsh"
fi


# Theme
ZSH_THEME=powerlevel10k/powerlevel10k
export QT_QPA_PLATFORMTHEME="qt5ct"

# Terminal settings

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Set highlight of auto suggest to white
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'

# Set date format of history file
HIST_STAMPS="yyyy-mm-dd"

# Set custom directory for oh_my_zsh used by dotfiles
ZSH_CUSTOM="$HOME/.omz_custom"

# Set plugins
plugins=(
	archlinux
	docker
	docker-compose
	extract
	golang
	git
	gitignore
	lol
	node
	pass
	pipenv
	python
  virtualenvwrapper
	z
	zsh-completions
	zsh-autosuggestions
	zsh-history-substring-search 
	zsh-syntax-highlighting
)

# Runs omz stuff
source $ZSH/oh-my-zsh.sh

# Completion
autoload -Uz compinit
compinit

# Completion for kitty
if which kitty > /dev/null; then 
	kitty + complete setup zsh | source /dev/stdin
fi

# Running powerlevel10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

