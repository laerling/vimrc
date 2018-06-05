" file handling - way of finding files, handling filetypes, etc.

" navigation behavior
set autochdir

" assume files to be UTF-8 instead of guessing their encoding and defaulting
" to latin1
set encoding=UTF-8

" VimOrganizer
autocmd! BufRead,BufWrite,BufWritePost,BufNewFile *.org
autocmd BufEnter *.org call org#SetOrgFileType()
autocmd filetype {org} set textwidth=0
