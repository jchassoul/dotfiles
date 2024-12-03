install: install-bspwm install-tmux install-desktop\
	install-vim install-xr install-xs install-fonts install-cmus install-wezterm

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
	rm -f ~/.config/polybar/config.ini
	rm -f ~/.config/polybar/launch.sh
	rm -f ~/.config/polybar/cmus.sh
	rm -f ~/.config/polybar/popup-calendar.sh
	rm -f ~/.config/polybar/pulseaudio-microphone.sh
	ln -s `pwd`/config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
	ln -s `pwd`/config/bspwm/sxhkdrc ~/.config/sxhkd/sxhkdrc
	ln -s `pwd`/config/polybar/config.ini ~/.config/polybar/config.ini
	ln -s `pwd`/config/polybar/colors.ini ~/.config/polybar/colors.ini
	ln -s `pwd`/config/polybar/fonts.ini ~/.config/polybar/fonts.ini
	ln -s `pwd`/config/polybar/modules.ini ~/.config/polybar/modules.ini
	ln -s `pwd`/config/polybar/modules ~/.config/polybar/modules
	ln -s `pwd`/config/polybar/include-modules.ini ~/.config/polybar/include-modules.ini
	ln -s `pwd`/config/polybar/scripts/launch.sh ~/.config/polybar/launch.sh
	ln -s `pwd`/config/polybar/scripts/cmus.sh ~/.config/polybar/cmus.sh
	ln -s `pwd`/config/polybar/scripts/nvidia.sh ~/.config/polybar/nvidia.sh
	ln -s `pwd`/config/polybar/scripts/popup-calendar.sh ~/.config/polybar/popup-calendar.sh
	ln -s `pwd`/config/polybar/scripts/pulseaudio-microphone.sh ~/.config/polybar/pulseaudio-microphone.sh

install-tmux:
	rm -f ~/.tmux.conf
	rm -f ~/.tmux-colors
	ln -s `pwd`/config/tmux/tmux-colors ~/.tmux-colors
	ln -s `pwd`/config/tmux/tmux.conf ~/.tmux.conf
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	git clone https://github.com/tmux-plugins/tmux-yank ~/.config/tmux-yank

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

install-vi:
	echo $SHELL

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

install-geany:
	rm -rf ~/.config/geany
	ln -s `pwd`/config/geany ~/.config/geany

install-cmus:
	mkdir -p ~/.config/cmus/
	rm -f ~/.config/cmus/rc
	rm -f ~/.config/cmus/srcery.theme
	ln -s `pwd`/config/cmus/rc ~/.config/cmus/rc
	ln -s `pwd`/config/cmus/srcery.theme ~/.config/cmus/srcery.theme

install-wezterm:
	rm -f ~/.wezterm.lua
	ln -s `pwd`/config/wezterm/wezterm.lua ~/.wezterm.lua
