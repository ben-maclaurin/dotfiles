call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'nanotech/jellybeans.vim'
call plug#end()

set number
set runtimepath^=~/.vim/bundle/ctrlp.vim
set number relativenumber

let g:coc_global_extensions = ['coc-tsserver']

set mouse=a

set re=0

set nospell
colorscheme jellybeans
set background=dark

set wrap
set linebreak

inoremap jk <ESC>
set guifont=Menlo-Regular:h14

nnoremap <leader>t :call fzf#vim#files(FindRootDirectory())<cr>
