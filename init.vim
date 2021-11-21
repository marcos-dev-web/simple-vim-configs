call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()

set nu
set rnu
set nowrap
set mouse=
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set si
set cursorline
set nowritebackup
set nobackup
set noswapfile
set updatetime=300
set shortmess+=c
set splitright
set splitbelow
set incsearch
set hlsearch
set inccommand=split
set title
set breakindent
set background=dark

filetype indent on
syntax on

if has('termguicolors')
	set termguicolors
endif

nnoremap <C-f> :Files <CR>

tnoremap <Esc> <C-\><C-n>

au BufEnter * if &buftype == 'terminal' | :startinsert | endif

function! OpenTerminal()
  split term://bash
  resize 10
endfunction

nnoremap <c-t> :call OpenTerminal()<CR>

nnoremap <silent> B :Buffers <CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <silent> <C-k><C-f> :NERDTreeToggle<CR>

