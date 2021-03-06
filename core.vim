" core.vim - The main vim config file
" ~/.vimrc should be a symlink to this file or at least source it

source ~/.vim/plugins.vim " must be loaded first

source ~/.vim/filehandling.vim
source ~/.vim/ui.vim


" run custom vimscript file if it exists
let s:customfile=glob('~/.vim/custom.vim')
if filereadable(s:customfile)
	exe 'source ' . s:customfile
endif
