call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
call plug#end()

" line numbers
set number

" mouse clicks 
set mouse=a

set re=0

" syntax highlighting
colorscheme tempus_autumn
syntax on
set termguicolors

" j and k to escape
inoremap jk <ESC>

" paste selection with space at end of line
nnoremap 1 A <ESC>p

" better mapping for markers
nnoremap ' `

" no bold fonts
set t_md=

" indent
set shiftwidth=2
set autoindent
set smartindent

" neovim treesitter lua
lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
