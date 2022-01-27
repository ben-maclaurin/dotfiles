call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

set number
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:coc_global_extensions = ['coc-tsserver']

set mouse=a

set re=0

set nospell
colorscheme papercolor 
set background=dark
syntax on

nnoremap cp :let @" = expand("%:t")<cr>

inoremap jk <ESC>

nnoremap <leader>t :call fzf#vim#files(FindRootDirectory())<cr>
