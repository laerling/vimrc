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
	set bg=light
endif

" looks
"colorscheme is GUI-specific
set guioptions=ag
syntax on
set noequalalways
set showcmd

" searching
set incsearch
set hlsearch
set ignorecase

" Editing behavior
set autoindent
set backspace=indent,eol,start

" shortcuts
nmap <C-o> :Utl<CR>
