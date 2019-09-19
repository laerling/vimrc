# vim vim vim

Run `git clone https://github.com/laerling/vimrc ~/.vim`, then run `make` inside the cloned directory.
This creates the bundle subdirectory and clones vundle into it.

On Unix systems run `make vimrc` inside the cloned directory.
On windows, source `core.vim` in the `_vimrc` file.

Start Vim, run `:PluginInstall`, restart Vim, and you're done.

If you run into problems, manually clone [Vundle](https://github.com/VundleVim/Vundle.vim) into `<repo_dir>/bundle/VundleVim`.
