install: install-git install-qtile

install-git:
		rm -f ~/.gitconfig
		ln -s `pwd`/git/gitconfig ~/.gitconfig

install-qtile:
		mkdir -p ~/.config/qtile
		rm -f ~/.config/qtile/config.py
		ln -s `pwd`/qtile/config.py ~/.config/qtile/config.py
