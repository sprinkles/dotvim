set nocompatible
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' 
Plugin 'tpope/vim-fugitive'
Plugin 'ap/vim-css-color',
Plugin 'sickill/vim-monokai'
Plugin 'tpope/vim-haml'
Plugin 'digitaltoad/vim-jade'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()             " required
filetype plugin indent on     " required

"
" " Brief help
" " :PluginList          - list configured bundles
" " :PluginInstall(!)    - install (update) bundles
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ


"" COLORS 
set bg=dark
set term=$TERM
"hi clear
"colorscheme monokai
syntax on


"" EDITOR
set autoindent    "take indent for new line from previous line"
set bs=2          "2 = indent,eol,start
set expandtab     "expand tabs as spaces. 
set shiftwidth=2  "indent by 2 spaces
set smartindent   "?  
set smarttab      "tab inserts spaces
set softtabstop=2 "tab key results in 2 spaces
set tabstop=2     "tabs are 2 spaces 

"" HELPFUL TIDBITS
set clipboard=unnamed
set hidden        "when a buffer is brought to foreground, remember undo history and marks
set laststatus=2  "always show status line
set magic         "enable extended regex
set number        "line numbers
set ruler         "show cursor position
set showcmd       "display incomplete cmds 
set showmatch     "show matching brackets
set showmode      "display current mode
set title         "show the filename in the title bar
set ttyfast       "send more chars at a given time
set wildmenu        
set wildmode=list:full

"" SEARCH
set hlsearch      "highlight searches
set ignorecase    "case insensitive... 
set incsearch     "highlight dynamically as pattern is typed
set smartcase     " ...unless word includes capital letter
set wrapscan      "make search wrap around

"" SPLITS
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" MAPPING 
let mapleader=','
nmap <leader>l :set list!<CR>
nmap <leader>n :set number!<CR>
nmap <leader>p :set paste!<CR>

"" FOLDING
"set foldmethod=indent

"" YIKES! -- disable arrow key nav
"" Use with care if others are using your vimrc, whoops!
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
"
" " Make arrowkey do something usefull, resize the viewports accordingly
" nnoremap <Left> :vertical resize +5<CR>
" nnoremap <Right> :vertical resize -5<CR>
" nnoremap <Up> :resize +5<CR>
" nnoremap <Down> :resize -5<CR>
"
"" Remember to try this again later. I'm still undecided on it
"if exists("&relativenumber")
"  set relativenumber
"  au BufReadPost * set relativenumber
"endif

"" Drupal files
if has("autocmd")
  augroup module
    autocmd!
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.theme set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    augroup END
endif
syntax on

set shell=bash
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

au! BufRead,BufNewFile *.jade setfiletype jade
au! BufRead,BufNewFile *.less setfiletype less
au! BufRead,BufNewFile *.coffee setfiletype coffee

" Enable persistent undo so that if I accidentally close a file, I can still
" " get back what I had originally.
set undodir=~/tmp/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer

