" file handling - way of finding files, handling filetypes, etc.

" don't use modelines! They're exploitable.
set nomodeline
set modelines=0

" navigation behavior
set autochdir

" assume files to be UTF-8 instead of guessing their encoding and defaulting
" to latin1
set encoding=UTF-8

" Concerning tabs:
" I usually want everything to obey 'ts. Therefore:
" set sw=0 (local to buffer)
" set sts=0 (local to buffer)
" Also, I prefer SPACES OVER TABS!!!!!!!!! Therefore:
" set et (local to buffer)
autocmd! BufRead,BufNewFile * set sw=0   " 0 means 'ts value will be used
autocmd! BufRead,BufNewFile * set sts=0  " 0 means feature is off
autocmd! BufRead,BufNewFile * set et

" VimOrganizer
autocmd! BufRead,BufWrite,BufWritePost,BufNewFile *.org
autocmd BufEnter *.org call org#SetOrgFileType()
autocmd filetype {org} set textwidth=0

" (ba)sh script
autocmd filetype {sh} set ts=4

" toml: Treat like yaml
autocmd! BufNewFile,BufRead *.toml set ft=yaml

" yaml
autocmd filetype {yaml} set ts=2

" python. TODO: Use ale plus a python linter
autocmd filetype {python} set ts=4  " pep8
autocmd filetype {python} set sts=0
autocmd filetype {python} set sw=0
autocmd filetype {python} set number

" graphviz dot files
autocmd filetype {dot} set ts=2

" Makefiles
autocmd! filetype {make} set noexpandtab

" nix files
autocmd! filetype {nix} set number
