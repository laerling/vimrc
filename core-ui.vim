" user interface

" GUI-specific settings
if has("gui_running")

	" OS-specific GUI settings
	if has("win32")
		set guifont=Consolas
	else
		set guifont=Source\ Code\ Pro\ 10
	endif

	colo gruvbox
	set bg=dark
else
	" TODO: Only load theme when not running on a tty (not in xterm on X)
	colo reloaded
endif

" looks
"colorscheme is GUI-specific
set guioptions=ag
syntax on
set noequalalways
set showcmd

" searching
set incsearch
set nohlsearch
set ignorecase

" Editing behavior
set autoindent
set backspace=indent,eol,start

" shortcuts
nmap <C-o> :Utl<CR>
map <f5> :set wrap!<CR>
