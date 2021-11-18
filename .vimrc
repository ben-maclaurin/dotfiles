call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ajmwagar/vim-deus'
Plug 'arcticicestudio/nord-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'romainl/apprentice'
call plug#end()

set number
set runtimepath^=~/.vim/bundle/ctrlp.vim
set number relativenumber

let g:coc_global_extensions = ['coc-tsserver']

set mouse=a
let g:material_theme_style = 'palenight'

set re=0

set nospell

set termguicolors
let g:seoul256_background = 234
colorscheme reykjavik
set t_Co=256
hi Visual cterm=reverse
