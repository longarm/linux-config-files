" {{{ Vundle
set nocompatible		" be iMproved
filetype off			" required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" vim-script repos
Bundle 'taglist.vim'

" original repos on github
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on		" required!
" }}}

" {{{ plugin settings

" power-line settings
set laststatus=2
set t_Co=256
let g:Powerline_symblos = 'fancy'
let g:Powerline_colorscheme = 'solarized256'
set encoding=utf8

" }}}

set fileformats=unix,dos,mac
set history=700
filetype plugin on
filetype indent on
set autoread
syntax enable
set background=dark
colorscheme peaksea 
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
set nobackup
set number
set tabstop=4
set shiftwidth=4
set autoindent
set cindent

" toggle menu and toolbar
set guioptions-=m
set guioptions-=T

" compile
function CompileAndRun()
	exec "w"
	if &filetype=="cpp"
		let compile_options="!g++ -Wall -O2 %"
		let run_options="./a.out"
	elseif &filetype=="java"
		let compile_options="!javac %"
		let run_options="java Main"
	elseif &filetype=="ruby"
		let compile_options="true"
		let run_options="!ruby %"
	endif
	exec compile_options . " && " . "echo \"__COMPILED__\"" . " && " . run_options
endfunction

imap <F5> <ESC>:call CompileAndRun()<CR>
nmap <F5> <ESC>:call CompileAndRun()<CR>
