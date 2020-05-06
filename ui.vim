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
set smartcase

" Editing behavior
set autoindent
set softtabstop=-1
set backspace=indent,eol,start

" other
set cb=unnamed
if has("win32")
	nnoremap <C-z> <nop> " Don't suspend
endif
" git log commands
autocmd FileType {fugitive} map <buffer> ll :Git log --graph --decorate=full --oneline<CR>
autocmd FileType {fugitive} map <buffer> lb :Git log --graph --decorate=full --oneline --all<CR>
autocmd FileType {fugitive} map <buffer> l<space> :Git log --graph --decorate=full --oneline
" TODO Write syntax file for git graph/git log and use

" TODO Sort the following into the categories above
" Mappings and Commands
"go directly to mark instead of beginning of line
map ' `
"For yanking a complete line we have yy:
nmap Y y$
nmap <C-o> :Utl<CR>
map <C-w>t :set wrap!<CR>
"alternative for terminals:
map <f5> <M-w>
"Like in the man utility:
map <M-u> :set hls!<CR>
map <C-w>w :write<CR>
command! Q :bd!
"Use enter key for navigating in help buffers
autocmd FileType help map <CR> <C-]>
