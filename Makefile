install: install-git install-i3 install-desktop install-zsh install-notes

install-git:
		rm -f ~/.gitconfig
		ln -s `pwd`/git/gitconfig ~/.gitconfig

install-i3:
		mkdir -p ~/.i3
		rm -f ~/.i3/config
		ln -s `pwd`/i3/config ~/.i3/config

install-desktop:
		mkdir -p ~/.config/desktop/
		rm -f ~/.config/desktop/fun-colors.png
		ln -s `pwd`/desktop/fun-colors.png ~/.config/desktop/fun-colors.png

install-zsh:
		rm -f ~/.zshrc
		ln -s `pwd`/zsh/zshrc ~/.zshrc

install-notes:
		mkdir -p ~/Vault/notebook
