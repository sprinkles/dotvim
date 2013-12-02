set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required! 
Bundle 'gmarik/vundle'
"
" My bundles here:
" "
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'suan/vim-instant-markdown'
Bundle 'airblade/vim-gitgutter'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bruno-/vim-vertical-move'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...
"
filetype plugin indent on     " required!
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.

"" COLORS 
syntax enable
set bg=dark
colorscheme solarized
set term=linux


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
set hidden        "when a buffer is brought to foreground, remember undo history and marks
set laststatus=2  "always show status line
set magic         "enable extended regex
set ruler         "show cursor position
set showcmd       "display incomplete cmds 
set showmatch     "show matching brackets
set showmode      "display current mode
set title         "show the filename in the title bar
set ttyfast       "send more chars at a given time
set wildmenu      "?  
set wildmode=list:full

"" SEARCH
set hlsearch      "highlight searches
set ignorecase    "case insensitive... 
set incsearch     "highlight dynamically as pattern is typed
set smartcase     " ...unless word includes capital letter
set wrapscan      "make search wrap around


"" MAPPING 
let mapleader=','
nmap <leader>l :set list!<CR>
nmap <leader>n :set number!<CR>
nmap <leader>p :set paste!<CR>

nmap <leader>n :set number!<CR>
nmap <leader>p :set paste!<CR>


"" FOLDING
"set foldmethod=indent

"" YIKES!
" Do not use the arrow keys any more
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
