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
	colo gruvbox
	set bg=dark
endif

" looks
set guioptions=ag
syntax on
set noequalalways
set showcmd
set display=truncate,uhex

" finding files
set wildmode=longest,list,full "Optional TODO: Apply this only for finding files, not for completing option names (works with pressing <tab> twice, though. E. g. with 'nowrap')
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
	"set shell=C:\cygwin64\bin\bash.exe " TODO: Doesn't work yet
endif

" shortcuts
if has("win32")
	nnoremap <C-z> <nop> "Don't suspend
endif
nmap <C-o> :Utl<CR>
map <f5> :set wrap!<CR>
