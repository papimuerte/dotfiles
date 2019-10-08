" Some defaults
set nocompatible " We're running Vim, not Vi!
syntax on " Enable syntax highlighting
filetype on " Enable filetype detection
filetype indent on " Enable filetype-specific indenting
filetype plugin on " Enable filetype-specific plugins
set encoding=utf-8
set number

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Tools
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'mileszs/ack.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'akiomik/git-gutter-vim'
Plug 'mbbill/undotree'
Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'benekastah/neomake'
Plug 'scrooloose/nerdtree'
Plug 'vim-ruby/vim-ruby'
Plug 'ngmy/vim-rubocop'
Plug 'vim-scripts/vim-rubyformat'
Plug 'w0rp/ale'

" Langs
Plug 'tpope/vim-markdown'
Plug 'fatih/vim-go'

" Colour schemes
Plug 'vim-scripts/Colour-Sampler-Pack'
Plug 'chriskempson/base16-vim'

" End vim-plug shenanigans
call plug#end()
