# Roxie's Dotfiles

Dotfiles mostly centered around fish.  These dotfiles are powered by [Homesick](https://github.com/technicalpickles/homesick). Too lazy for managing it myself.

## Explination

This dotfiles is very messy. It has some older files I don't use anymore but may need in the future. The main highlights for what I use daily atm are VSCodium settings, zsh and oh-my-zsh, and nvim. There is also a collection of useful bin files.

## Requirements for zsh

The following are references in `aliases.zsh` and therefore need to be installed if you are using my zsh files.

```sh
bat
tldr
ncdu
diff-so-fancy
homesick (for managing the dotfiles themselves)
pywal
```

You also need to recursively pull this repo as there are submodules for my omz plugins

## Thanks

I have pick 'n' mixed many different dotfile repos instead of just forking one. This is because I use fish and it's harder to find fish compatible dotfiles. So a lot of shell changes have to be edited by me. I'll try and credit all I can below. 

[mathiasbynens](https://github.com/mathiasbynens) for their [dotfiles](https://github.com/mathiasbynens/dotfiles)

[holman](https://github.com/holman/) for a lot of scripts in their [dotfiles](https://github.com/holman/dotfiles)
