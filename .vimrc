" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
source ~/.vimrc.before
endif

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","
set timeout timeoutlen=1500

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile
endif

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set linebreak    "Wrap lines at convenient points

" ================ Custom Settings ========================

" Window pane resizing
nnoremap <silent> <Leader>[ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>] :exe "resize " . (winheight(0) * 2/3)<CR>

" ================ Plugins ====================

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Tools
"Plug 'tpope/vim-git'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-unimpaired'
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-eunuch'
"Plug 'mileszs/ack.vim'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'majutsushi/tagbar'
"Plug 'godlygeek/tabular'
Plug 'akiomik/git-gutter-vim'
"Plug 'mbbill/undotree'
"Plug 'davidhalter/jedi-vim'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
"Plug 'benekastah/neomake'
Plug 'scrooloose/nerdtree'
"Plug 'vim-ruby/vim-ruby'
Plug 'ngmy/vim-rubocop'
"Plug 'vim-scripts/vim-rubyformat'
"Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'

" Langs
"Plug 'tpope/vim-markdown'
"Plug 'fatih/vim-go'

" Colour schemes
Plug 'vim-scripts/Colour-Sampler-Pack'
Plug 'chriskempson/base16-vim'
Plug 'arcticicestudio/nord-vim'
" End vim-plug shenanigans
call plug#end()
