.PHONY: vimrc

bundle/Vundle.vim: vimrc
	mkdir -p bundle
	cd bundle; git clone "https://github.com/VundleVim/Vundle.vim"

vimrc: ~/.vimrc
~/.vimrc:
	cd ~/; \
	rm -f .vimrc; \
	ln -s .vim/core.vim .vimrc;
