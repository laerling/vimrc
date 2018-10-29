" user interface

" GUI-specific settings
if has("gui_running")

	" OS-specific GUI settings
	if has("win32")
		set guifont=Consolas
	else
		set guifont=Source\ Code\ Pro\ 10
	endif

	colo zenburn
else
	colo default
	set bg=light
endif

" looks
set guioptions=ag
syntax on
set noequalalways
set showcmd
set display=truncate,uhex
set diffopt=filler,vertical

" finding files
set wildmode=longest,full
set wildmenu

" searching
set incsearch
set nohlsearch
set ignorecase

" Editing behavior
set autoindent
set backspace=indent,eol,start

" other
if has("win32")
	nnoremap <C-z> <nop> " Don't suspend
endif

" Mappings and Commands
nmap Y y$ " For yanking a complete line we have yy.
nmap <C-o> :Utl<CR>
map <M-w> :set wrap!<CR>
map <f5> <M-w> " alternative for terminals
map <M-u> :set hls!<CR> " Like in the man utility
map <C-w>w :write<CR>
command! Q :bd!
map ? :Swoop<CR>i
