call pathogen#infect()
syntax on
filetype plugin indent on

" Remove the menu bar
if has("gui_running")
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
endif

set nocompatible               " be iMproved

" show numbers
set number

" tildeop allops for commands like ~w
" set tildeop

" set the leader key to ',' (easy to type)
let mapleader = ","

" You can type ;w instead of :w
nnoremap ; :

set incsearch "Incremental search
set hlsearch "Search highlight
nnoremap <silent> <Leader>/ :nohlsearch<CR>
" 256-color terminal
set t_Co=256

" utf-8 by default
set encoding=utf-8

" no ~backup files
set nobackup

" no ~backup files during editing
set nowritebackup

" no .swp files
set noswapfile

" Control +  P for fuzzy file open
let g:ctrlp_working_path_mode = 0

set laststatus=2

" Use the same symtax for HAML and HAMLC
au BufRead,BufNewFile *.hamlc set ft=haml

" spaces, not tabs
set expandtab
set shiftwidth=2
set softtabstop=2

colorscheme solarized

" Save pinky pain ,m => Esc
inoremap <Leader>m <ESC>
nnoremap <Leader>h :set invhlsearch<CR>

inoremap <Leader>n <ESC>:NERDTreeToggle<CR>
vnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

" resize current buffer by +/- 5
nnoremap <Leader>wr :vertical resize -5<cr>
nnoremap <Leader>ws :resize +5<cr>
nnoremap <Leader>w2 :resize -5<cr>
nnoremap <Leader>we :vertical resize +5<cr>

" zoom buffer
nnoremap <Leader>ww :call ZoomWin()<cr><cr>

" vimux
map <Leader>tr :call VimuxRunCommand("rspec " . bufname("%"))<CR>
map <Leader>tl :call VimuxRunCommand("rspec " . bufname("%") . ":" . line("."))<CR>
map <Leader>ta :call VimuxRunCommand("rspec spec")<CR>
map <Leader>tt :VimuxRunLastCommand<CR>
map <Leader>tq :VimuxCloseRunner<CR>
map <Leader>tp :VimuxPromptCommand<CR>

" Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <F8> :TagbarToggle<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set pastetoggle=<F2>
