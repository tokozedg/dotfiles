"----------------------------------------------------------------------
" PLUGINS
"----------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

"-----General plugins--------------------------------------------
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
"-----Git plugins------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"-----Programming plugins----------------------------------------
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'scrooloose/syntastic'
"-----Latex plugins----------------------------------------------
Plug 'lervag/vimtex'
"-----Colorschemes-----------------------------------------------
Plug 'morhetz/gruvbox'

call plug#end()

"----------------------------------------------------------------------
" PLUGIN OPTIONS
"----------------------------------------------------------------------
"
"-----CtrlP options---------------------------------------------
let g:ctrlp_map = '<c-p>'             " set Ctrl-P to invoke CtrlP
let g:ctrlp_cmd = 'CtrlPMixed'        " use MRU, Paths and Buffers
let g:ctrlp_working_path_mode = 'ra'  " use project directory if possible

"-----Airline options-------------------------------------------
let g:airline_powerline_fonts = 1
"-----Syntastic options-----------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"----------------------------------------------------------------------
" APPEARANCE
"----------------------------------------------------------------------

set showcmd              " show when typing a command
set laststatus=2         " always show status bar
set number               " show line numbers
colorscheme gruvbox
set background=dark

"----------------------------------------------------------------------
"    EDITOR SETTINGS
"----------------------------------------------------------------------

"-----Indentation------------------------------------------------
syntax enable

set nowrap
set expandtab
set tabstop=4 softtabstop=4 shiftwidth=4
set autoindent
set copyindent
set preserveindent

autocmd FileType make setlocal noexpandtab
" wrap long lines in LaTex files
autocmd FileType tex setlocal textwidth=80
autocmd FileType tex setlocal formatoptions+=t

"-----Search options---------------------------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase

"------------------------------------------------------------------------------
"    BEHAVIOUR
"------------------------------------------------------------------------------

set hidden                            " make working with buffers easier

autocmd! bufwritepost init.vim source % " automatically apply changes in init.vim

set nobackup
set nowb
set noswapfile

"------------------------------------------------------------------------------
"    KEYBINDINGS
"------------------------------------------------------------------------------

let mapleader = ","
let localmapleader = ";"
" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l
" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

nmap <Leader>l :set list!<CR>
