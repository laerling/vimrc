" file handling - way of finding files, handling filetypes, etc.

" navigation behavior
set autochdir

" assume files to be UTF-8 instead of guessing their encoding and defaulting
" to latin1
set encoding=UTF-8

" TODO: This was needed for a particular project and will likely removed in
" the future
autocmd FileType {c,cpp} set sw=2 sta noet ai nu
