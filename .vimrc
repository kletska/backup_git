"https://github.com/ivanceras/rust-vim-setup
"https://devhints.io/vimscript

execute pathogen#infect()
syntax on
filetype plugin indent on
let g:ycm_rust_src_path="/home/kletska/Developer/rust-master/src/"
"autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

"set mouse=a
call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'scrooloose/nerdtree'     
Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'idris-hackers/idris-vim'
call plug#end()

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

set bg=dark
colors gruvbox
filetype on
filetype plugin indent on
set exrc "set secure set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
"set colorcolumn=110
"highlight ColorColumn ctermbg=red

let g:Tex_DefaultTargetFormat='pdf'
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

set tabstop=4
set shiftwidth=4
set expandtab

"setlocal spell
"set spelllang=en_gb
"inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

:let maplocalleader = "\\"
set nu
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
set clipboard=unnamedplus
