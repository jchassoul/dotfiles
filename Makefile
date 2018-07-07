install: install-git install-i3 install-tmux install-desktop install-zsh\
 install-ranger install-vim

install-git:
		rm -f ~/.gitconfig
		ln -s `pwd`/config/git/gitconfig ~/.gitconfig

install-i3:
		mkdir -p ~/.i3
		rm -f ~/.i3/config
		rm -f ~/.i3/i3status.conf
		ln -s `pwd`/config/i3/config ~/.i3/config
		ln -s `pwd`/config/i3/i3status.conf ~/.i3/i3status.conf

install-tmux:
		rm -f ~/.tmux.conf
		ln -s `pwd`/config/tmux/tmux.conf ~/.tmux.conf

install-desktop:
		mkdir -p ~/.config/desktop/
		rm -f ~/.config/desktop/wallpaper.png
		ln -s `pwd`/config/desktop/wallpaper.png ~/.config/desktop/wallpaper.png

install-zsh:
		rm -f ~/.zshrc
		ln -s `pwd`/config/zsh/zshrc ~/.zshrc

install-ranger:
		ranger --copy-config=scope
		rm -f ~/.config/ranger/rc.conf
		ln -s `pwd`/config/ranger/rc.conf ~/.config/ranger/rc.conf

install-vim:
		pwd
