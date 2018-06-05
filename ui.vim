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
	" TODO: Load different themes when running on a tty or in xterm
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
set wildmode=longest,full "Optional TODO: Apply this only for finding files, not for completing option names
set wildmenu

" searching
set incsearch
set nohlsearch
set ignorecase

" Editing behavior
set autoindent
set backspace=indent,eol,start
" TODO: Make { and } jump to lines with only whitespace in them, too (normally
" those are skipped)

" other
if has("win32")
	"set shell=C:\cygwin64\bin\bash.exe " TODO: Doesn't work yet
	nnoremap <C-z> <nop> "Don't suspend
endif

" Mappings
nmap Y y$ " For yanking a complete line we have yy.
nmap <C-o> :Utl<CR>
map <M-w> :set wrap!<CR>
map <f5> <M-w> " alternative for terminals
map <M-u> :set hls!<CR> " Like in the man utility
map <C-w>w :write<CR>
