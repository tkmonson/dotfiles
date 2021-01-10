"     _       _ _         _           
"    (_)_ __ (_) |___   _(_)_ __ ___  
"    | | '_ \| | __\ \ / / | '_ ` _ \ 
"    | | | | | | |_ \ V /| | | | | | |
"    |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
                                 

let maplocalleader =' '
let mapleader=' '

" Plugs (fetched from https://github.com/<plug>)
call plug#begin('~/.config/nvim/plugged')
    Plug 'jreybert/vimagit'
    Plug 'junegunn/goyo.vim'
    Plug 'lervag/vimtex'
    Plug 'PotatoesMaster/i3-vim-syntax'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'vimwiki/vimwiki'
call plug#end()

" Basic settings
set autoindent
set nocompatible
filetype plugin indent on
syntax on
set showmatch
set ruler
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number relativenumber

" Autocomplete
set wildmode=longest,list,full

" Tab Shortcuts
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

" Vimtex settings
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = 'latex'
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-shell-escape',
    \ ],
    \}
    
"let g:vimtex_compiler_engine = 'lualatex'

" Split navigation with C-hjkl
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" Mappings
map <leader>f :Goyo \| set linebreak<CR>
map <leader>o :setlocal spell! spelllang=en_us<CR>
set splitbelow splitright

" LaTeX
autocmd filetype tex inoremap ,bf \textbf{}<esc>t{i
autocmd filetype tex inoremap ,it \textit{}<esc>t{i
autocmd filetype tex inoremap ,em \emph{}<esc>t{i

