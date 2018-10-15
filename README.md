# Roxie's Dotfiles

Dotfiles mostly centered around fish.  These dotfiles are powered by [Homesick](https://github.com/technicalpickles/homesick). Too lazy for managing it myself.

# Requirements

My dotfiles assume you have quite a few programs installed and have added your `.local/bin` to `$PATH` using fish;s universal variables. `set -U fish_user_paths /home/USER/.local/bin $fish_user_paths`

The following are required as they are referenced outside of aliases.fish:
```
diff-so-fancy
fish
homesick (for managing the dotfiles themselves)
neovim (with Vundle)
omf (for prompt to look pretty)
polybar
pywal
```

Gnome has an extention that removes the top bar. That needs to be enabled for polybar to work properly. `wallpaper.png` is loaded automatically as my wallpaper; hence its inclusion. 

# Thanks
I have pick 'n' mixed many different dotfile repos instead of just forking one. This is because I use fish and it's harder to find fish compatible dotfiles. So a lot of shell changes have to be edited by me. I'll try and credit all I can below. 

[mathiasbynens](https://github.com/mathiasbynens) for their [dotfiles](https://github.com/mathiasbynens/dotfiles)

[holman](https://github.com/holman/) for a lot of scripts in their [dotfiles](https://github.com/holman/dotfiles)
