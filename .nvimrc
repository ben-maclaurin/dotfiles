call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ishan9299/modus-theme-vim'
call plug#end()

" line numbers
set number

" mouse clicks 
set mouse=a

set re=0

" syntax highlighting
colorscheme modus-vivendi 
syntax on
set termguicolors

" j and k to escape
inoremap jk <ESC>

" paste selection with space at end of line
nnoremap 1 A <ESC>p

" better mapping for markers
nnoremap ' ` 

" easily yank selection to system clipboard
vnoremap 2 "+y<ESC> 

" enable hash key
inoremap <M-#> #

" no bold fonts
set t_md=

" indent
set shiftwidth=2
set autoindent
set smartindent

" hide status bar
let s:hidden_all = 1
set noshowmode
set noruler
set laststatus=0
set noshowcmd

" neovim treesitter lua
lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
