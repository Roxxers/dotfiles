# Completion for kitty
if which kitty > /dev/null; then
	kitty + complete setup zsh | source /dev/stdin
fi

# keychain
#eval $(keychain --eval --quiet --agents "gpg,ssh" id_ed25519 id_rsa)
