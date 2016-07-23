# dotfiles

These are my dotfiles. Feel free to fork or use parts of my configuration yourself.

There are config files for spacemacs, neovim, git, fish, termite, i3 and x in the respective directories.

## Installation

Run `./install` to clone dotbot and symlink all configuration files to your home directory. This won't overwrite existing files.
I would also recommend running `fish_update_completions` to generate completions from your manpages.

## Details

This information might be outdated, so if you are unsure what these dotfiles actually do, check out the source.

### neovim

Note: I'm now using spacemacs instead of neovim, so don't expect any updates to neovim config.

I'm using the following plugins (with vim-plug as the plugin manager):
- CtrlP
- NERDTree
- fugitive
- gitgutter
- emmet
- typescript (syntax hightlighting)
- YouCompleteMe

The colorscheme is gruvbox (dark).
Besides that there are mostly a few keybindings. See https://github.com/jupiter24/dotfiles/blob/master/neovim/init.vim for more information.

### i3

- use vim-like bindings for navigation (h,j,k,l instead of j,k,l,;)
- Mod+Shift+s to shut down
- lockscreen
- autostart Firefox, emacs daemon and a few others
- symbols in workspace names
- automatically start some programs on specific workspaces

### fish

No greeting is displayed, flash prompt via fisherman.

### termite

Also use gruvbox as colorscheme, Source Code Pro as font.

### X

Decrease typematic delay and increase rate. Keyboard layouts are us and de, both shift keys together toggle between them.
Greek keyboard layout is available after pressing Mod+Shift+g (go back with Mod+Shift+u).

Escape and Caps Lock are swapped, Ctrl-Alt-Backspace to terminate X is enabled.

### Spacemacs

Some layers activated, custom layer for org-jupyter.
Besides that mostly mu4e config.

### pkglist

pkglist.txt contains a list of explicitly installed arch packages.
Some are from the AUR.
