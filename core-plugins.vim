" package management - vundle mainly
" for help on how to add a plugin, consult vundle-example.vim


" prerequisites (some things are reset in the postrequisites)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
""" BEGIN PLUGINS


Plugin 'VundleVim/Vundle.vim' " vundle must manage itself

Plugin 'bling/vim-airline'
Plugin 'vim-scripts/utl.vim' "optional for org-mode: Universal Text Linking - Interact with hyperlinks
Plugin 'tpope/vim-repeat' "optional for org-mode: repeat - Repeat actions that would not be repeatable otherwise
Plugin 'tpope/vim-speeddating' "optional for org-mode: In-/decrease dates the vim way: C-a and C-x
Plugin 'mattn/calendar-vim' "optional for org-mode: Create a calendar window for timestamp insertion
Plugin 'jceb/vim-orgmode'


""" END PLUGINS
call vundle#end()

" postrequisites
filetype plugin indent on


" for help:

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
