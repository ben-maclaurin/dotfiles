call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'sainnhe/edge'
Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
Plug 'dracula/vim'
call plug#end()

set number
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:coc_global_extensions = ['coc-tsserver']

" Allow click
set mouse=a

set re=0

set nospell
set background=dark
let g:edge_style = 'neon'
let g:tempus_enforce_background_color=1
if (has("termguicolors"))
    set termguicolors
endif
colorscheme tempus_night 
syntax on

" cp to copy filename
nnoremap cp :let @" = expand("%:t")<cr>

" Toggle NERDTree
nnoremap <Leader>f :NERDTreeToggle<Enter>

" j and k to escape
inoremap jk <ESC>

" Hide some NERDTree nonsense 
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"

" No bold fonts
set t_md=

" Indents
set shiftwidth=2
set autoindent
set smartindent

