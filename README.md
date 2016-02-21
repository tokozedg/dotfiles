# dotfiles

These are my dotfiles. Feel free to fork or use parts of my configuration yourself.

There are config files for neovim, git, fish, termite, i3 and x in the respective directories.

## Installation

Run `./install` to clone dotbot and symlink all configuration files to your home directory. This won't overwrite existing files.

## Details

This information might be outdated, so if you are unsure what these dotfiles actually do, check out the source.

### neovim

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

Mostly defaults. The only change I've made is to use vim bindings for movement (h,j,k,l) instead of the default (j,k,l,;). This means that I had to map 'split horizontally' to Mod+c.

### fish

No greeting is displayed, completions are automatically generated from man pages.

### termite

Also use gruvbox as colorscheme, Inconsolata as font.

### X

Decrease typematic delay and increase rate. Keyboard layouts are us and de, both shift keys together toggle between them.

Escape and Caps Lock are swapped, Ctrl-Alt-Backspace to terminate X is enabled.
