" Some defaults
set nocompatible " We're running Vim, not Vi!
syntax on " Enable syntax highlighting
filetype on " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins
set encoding=utf-8
set number

" Basic settings

let mapleader=";"         " Change leader key from \ to ,
let maplocalleader="\\"   " Set local leader to \\
set hidden                " Hide buffers instead of closing
set showmatch             " Show matching parantesis
set nrformats=            " Treat all numerals as decimals
set nobackup              " Don't keep backup files, it's 70's style cluttering
set noswapfile            " Don't write annoying intermediate swap files,
                          "   who did ever restore from swap files anyway?
set undofile              " Persistent undos
set undodir=$HOME/.vim/undo " Where to save undo histories
set undolevels=1000       " How many undos
set undoreload=10000      " Number of lines to save for undo
set viminfo='20,\"80      " Read / Write a .viminfo file, don't store more
                          "   than 80 lines of registers
set title                 " Change the terminal's title
set visualbell            " Don't beep
set t_vb=                 " Don't flash
set noerrorbells          " Don't beep
set showcmd               " Show (partial) command in the last line of the
                          "   screen this also shows visual selection info
set nomodeline            " Disable mode lines (security measure)
set cursorline            " Underline the current line, for quick orientation
set history=1000          " Remember more commands and search history
set undolevels=1000       " Use many muchos levels of undo
set scrolloff=4           " Keep 4 lines off the edges of the screen when
                          "   scrolling
"set t_Co=256              " Pretty colours
"let base16colorspace=256  " Access colors present in 256 colorspace
"set background=dark       " Setting background to dark
set nowrap                        " Don't wrap lines
set tabstop=2                     " A tab is 2 spaces
set shiftwidth=2                  " An autoindent is 2 spaces
set expandtab                     " Use spaces, not tabs
set backspace=indent,eol,start    " Backspace through everything in insert mode
set autoindent                    " Always autoindent
set copyindent                    " Copy previous indentation on autoindenting
set shiftround                    " use multiple of shiftwidth when indenting
                                  "   with '<' and '>'
set smarttab                      " Insert tabs on start of line according to
                                  "   shiftwidth, not tabstop
" Setting default colourscheme
silent! colorscheme nord
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
Plug 'articicestudio/nord-vim'
" End vim-plug shenanigans
call plug#end()
