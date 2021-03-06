install: install-kitty install-bspwm install-tmux install-desktop\
	install-mksh install-vim install-xr install-xs install-fonts

git: install-git

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/config/git/gitconfig ~/.gitconfig

install-kitty:
	mkdir -p ~/.config/kitty
	rm -f ~/.config/kitty/kitty.conf
	ln -s `pwd`/config/kitty/kitty.conf ~/.config/kitty/kitty.conf

install-bspwm:
	mkdir -p ~/.config/bspwm
	mkdir -p ~/.config/sxhkd
	mkdir -p ~/.config/polybar
	rm -f ~/.config/bspwm/bspwmrc
	rm -f ~/.config/sxhkd/sxhkdrc
	rm -f ~/.config/polybar/config
	rm -f ~/.config/polybar/cmus.sh
	ln -s `pwd`/config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
	ln -s `pwd`/config/bspwm/sxhkdrc ~/.config/sxhkd/sxhkdrc
	ln -s `pwd`/config/bspwm/polybar/config ~/.config/polybar/config
	ln -s `pwd`/config/bspwm/polybar/cmus.sh ~/.config/polybar/cmus.sh

install-tmux:
	rm -f ~/.tmux.conf
	rm -f ~/.tmux-colors
	ln -s `pwd`/config/tmux/tmux-colors ~/.tmux-colors
	ln -s `pwd`/config/tmux/tmux.conf ~/.tmux.conf

install-desktop:
	mkdir -p ~/.config/desktop/
	rm -f ~/.config/desktop/background.jpg
	ln -s `pwd`/images/ophelia.jpg ~/.config/desktop/background.jpg
	mkdir -p ~/.local/share/applications
	rm -f ~/.local/share/applications/mimeinfo.cache
	ln -s `pwd`/config/mime/mimeinfo.cache ~/.local/share/applications/mimeinfo.cache

install-mksh:
	rm -f ~/.mkshrc
	ln -s `pwd`/config/mksh/mkshrc ~/.mkshrc
	chsh --shell /bin/mksh

install-vim:
	rm -Rf ~/.vim
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mkdir -p ~/.vim/undodir
	rm -f ~/.vimrc
	ln -s `pwd`/config/vim/vimrc ~/.vimrc
	ln -s `pwd`/config/vim/plugin ~/.vim/plugin

install-xs:
	rm -f ~/.xsession
	ln -s `pwd`/config/Xsession ~/.xsession

install-xr:
	rm -f ~/.Xresources
	ln -s `pwd`/config/Xresources ~/.Xresources

install-fonts:
	mkdir -p ~/.fonts
	rm -f ~/.fonts/Inconsolata\ Nerd\ Font\ Complete\ Mono.otf
	ln -s `pwd`/fonts/Inconsolata\ Nerd\ Font\ Complete\ Mono.otf \
		~/.fonts/Inconsolata\ Nerd\ Font\ Complete\ Mono.otf
