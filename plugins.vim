" package management - vundle mainly
" for help on how to add a plugin, consult vundle-example.vim


" prerequisites (some things are reset in the postrequisites)
set nocompatible
filetype off
execute 'set rtp+=' . glob('$HOME/.vim/bundle/Vundle.vim')

call vundle#begin()
" 'plugin-name' must be used instead of "plugin-name"

" core
Plugin 'VundleVim/Vundle.vim' " vundle must manage itself
Plugin 'tpope/vim-sensible'

" colorthemes
Plugin 'jnurmine/zenburn'
Plugin 'morhetz/gruvbox'
Plugin 'vim-scripts/reloaded.vim'

" look and feel
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'pelodelfuego/vim-swoop'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/utl.vim'

" file operations and file type handling
Plugin 'hsitz/VimOrganizer'
Plugin 'scrooloose/nerdtree'
Plugin 'spwhitt/vim-nix'
Plugin 'tpope/vim-fugitive'
Plugin 'yegappan/mru'

call vundle#end()

" postrequisites
filetype plugin indent on


" for help:

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
