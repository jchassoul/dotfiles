install: install-gtk3 install-termite install-i3 install-tmux\
	install-desktop install-mksh install-vim install-xr\
	install-vifm

git: install-git

settings: install-gtk3

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/config/git/gitconfig ~/.gitconfig

install-gtk3:
	rm -f ~/.config/gtk-3.0/settings.ini
	ln -s `pwd`/config/settings.init ~/.config/gtk-3.0/settings.ini

install-termite:
	mkdir -p ~/.config/termite
	rm -f ~/.config/termite/config
	ln -s `pwd`/config/termite/config ~/.config/termite/config

install-i3:
	mkdir -p ~/.config/i3
	rm -f ~/.config/i3/config
	rm -f ~/.config/i3/i3status.conf
	rm -f ~/.config/i3/lock
	rm -f ~/.config/i3/lock.png
	rm -f ~/.config/i3/text.png
	ln -s `pwd`/config/i3/config ~/.config/i3/config
	ln -s `pwd`/config/i3/i3status.conf ~/.config/i3/i3status.conf
	ln -s `pwd`/config/i3/lock ~/.config/i3/lock
	ln -s `pwd`/config/i3/lock.png ~/.config/i3/lock.png
	ln -s `pwd`/config/i3/text.png ~/.config/i3/text.png

install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/config/tmux/tmux.conf ~/.tmux.conf

install-desktop:
	mkdir -p ~/.config/desktop/
	rm -f ~/.config/desktop/ophelia.jpg
	ln -s `pwd`/images/ophelia.jpg ~/.config/desktop/ophelia.jpg

install-mksh:
	rm -f ~/.mkshrc
	ln -s `pwd`/config/mksh/mkshrc ~/.mkshrc

install-vim:
	rm -Rf ~/.vim
	mkdir -p ~/.vim/autoload
	mkdir -p ~/.vim/bundle
	rm -f ~/.vimrc
	ln -s `pwd`/config/vim/vimrc ~/.vimrc
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
	git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale
	git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
	git clone https://github.com/elzr/vim-json.git ~/.vim/bundle/vim-json
	git clone https://github.com/tbastos/vim-lua.git ~/.vim/bundle/vim-lua
	git clone https://github.com/lfe/vim-lfe.git ~/.vim/bundle/vim-lfe
	git clone https://github.com/Yggdroot/indentLine.git ~/.vim/bundle/indentLine
	git clone https://github.com/nvie/vim-flake8 ~/.vim/bundle/vim-flake8

install-xr:
	rm -f ~/.Xresources
	ln -s `pwd`/config/Xresources ~/.Xresources

install-vifm:
	rm -f ~/.config/vifm/vifmrc
	ln -s `pwd`/config/vifm/vifmrc ~/.config/vifm/vifmrc

