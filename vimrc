set nocompatible              
filetype off                 

" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle' 
Bundle 'tpope/vim-fugitive'
Bundle 'ap/vim-css-color',
Bundle 'altercation/vim-colors-solarized'
Bundle 'sickill/vim-monokai'
Bundle 'tpope/vim-haml'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
""Bundle 'kien/ctrlp.vim'
""Bundle 'suan/vim-instant-markdown'
""Bundle 'Lokaltog/vim-easymotion'
""Bundle 'bruno-/vim-vertical-move'
""Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

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
set shell=bash
