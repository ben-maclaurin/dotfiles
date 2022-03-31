call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
call plug#end()

" line numbers
set number

" mouse clicks 
set mouse=a

set re=0

" syntax highlighting
syntax on

" j and k to escape
inoremap jk <ESC>

" no bold fonts
set t_md=

" indent
set shiftwidth=2
set autoindent
set smartindent
