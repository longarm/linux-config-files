set nocompatible
behave mswin

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=700
filetype plugin on
filetype indent on
set autoread


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
colorscheme peaksea
set background=dark
set encoding=utf8

set nobackup
set number
set tabstop=4
set shiftwidth=4
set autoindent


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Define
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle menu and toolbar
set guioptions-=m
set guioptions-=T

" source code options
function Gao()
	if &filetype=="cpp"
		let compile_options = "!g++ -Wall -O2 %"
		let run_options = "./a.out"
	elseif
		let compile_options = "!javac %"
		let run_options = "java Main"
	endif
	execute "w"
	execute compile_options . " && echo \"== COMPILED SUCCEFULLY == \" && " . run_options
endfunction

imap <F5> <ESC>:call Gao()<CR>
nmap <F5> <ESC>:call Gao()<CR>
