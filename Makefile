install: install-git install-i3 install-tmux install-desktop install-zsh install-notes install-keys install-fruits install-other install-planets install-structures install-units

install-git:
		rm -f ~/.gitconfig
		ln -s `pwd`/git/gitconfig ~/.gitconfig

install-i3:
		mkdir -p ~/.i3
		rm -f ~/.i3/config
		ln -s `pwd`/i3/config ~/.i3/config

install-tmux:
		rm -f ~/.tmux.conf
		ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf

install-desktop:
		mkdir -p ~/.config/desktop/
		rm -f ~/.config/desktop/fun-colors.png
		ln -s `pwd`/desktop/fun-colors.png ~/.config/desktop/fun-colors.png

install-zsh:
		rm -f ~/.zshrc
		ln -s `pwd`/zsh/zshrc ~/.zshrc

install-notes:
		mkdir -p ~/work/notebooks

install-keys:
		mkdir -p ~/work/keys

install-fruits:
		mkdir -p ~/work/fruits

install-other:
		mkdir -p ~/work/other

install-planets:
		mkdir -p ~/work/planets

install-structures:
		mkdir -p ~/work/structures

install-units:
		mkdir -p ~/work/units
