" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" show line number
set number

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on


" vbundle's configuration starts here
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
" Bundle 'Lokaltog/powerline'

"
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on


" NERD Tree
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>

let mapleader = ','

