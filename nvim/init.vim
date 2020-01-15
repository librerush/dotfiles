call plug#begin(stdpath('data') . '/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'itchyny/vim-gitbranch'
    Plug 'relastle/bluewery.vim'
    Plug 'mbbill/undotree'
    Plug 'tyru/caw.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'preservim/nerdtree'
    Plug 'tmsvg/pear-tree'
call plug#end()


set number
set termguicolors
filetype plugin on
set tabstop=4 expandtab shiftwidth=4 smarttab

autocmd FileType prolog set tabstop=4|set shiftwidth=4|set expandtab

colorscheme bluewery
let g:lightline = { 'colorscheme': 'bluewery' }

" git branch
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }


map <C-n> :NERDTreeToggle<CR>


