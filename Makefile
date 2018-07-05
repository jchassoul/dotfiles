install: install-git install-i3 install-tmux install-desktop install-zsh\
 install-ranger

install-git:
		rm -f ~/.gitconfig
		ln -s `pwd`/git/gitconfig ~/.gitconfig

install-i3:
		mkdir -p ~/.i3
		rm -f ~/.i3/config
		rm -f ~/.i3/i3status.conf
		ln -s `pwd`/i3/config ~/.i3/config
		ln -s `pwd`/i3/i3status.conf ~/.i3/i3status.conf

install-tmux:
		rm -f ~/.tmux.conf
		ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf

install-desktop:
		mkdir -p ~/.config/desktop/
		rm -f ~/.config/desktop/wallpaper.png
		ln -s `pwd`/desktop/wallpaper.png ~/.config/desktop/wallpaper.png

install-zsh:
		rm -f ~/.zshrc
		ln -s `pwd`/zsh/zshrc ~/.zshrc

install-ranger:
		ranger --copy-config=scope
		rm -f ~/.config/ranger/rc.conf
		ln -s `pwd`/ranger/rc.conf ~/.config/ranger/rc.conf
