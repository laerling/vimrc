" file handling - way of finding files, handling filetypes, etc.

" don't use modelines! They're exploitable.
set nomodeline
set modelines=0

" navigation behavior
set autochdir

" assume files to be UTF-8 instead of guessing their encoding and defaulting
" to latin1
set encoding=UTF-8

" VimOrganizer
autocmd! BufRead,BufWrite,BufWritePost,BufNewFile *.org
autocmd BufEnter *.org call org#SetOrgFileType()
autocmd filetype {org} set textwidth=0

" toml
autocmd! BufNewFile,BufRead *.toml set syntax=yaml

" NixOS configuration files
augroup nix
	au!
	autocmd! BufNewFile,BufRead,BufWrite *.nix set ft=nix
	autocmd BufNewFile,BufRead,BufWrite *.nix set syntax=conf
	autocmd FileType nix set ts=2
	autocmd FileType nix set sw=0
	autocmd FileType nix set sts=0
	autocmd FileType nix set ai
augroup END
