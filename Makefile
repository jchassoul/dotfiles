install: install-gtk3 install-termite install-i3 install-tmux\
	install-desktop install-mksh install-vim install-xr\
	install-vifm install-fonts install-mimeinfo

git: install-git

settings: install-gtk3

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/config/git/gitconfig ~/.gitconfig

install-gtk3:
	rm -f ~/.config/gtk-3.0/settings.ini
	mkdir -p ~/.config/gtk-3.0
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
	rm -f ~/.config/desktop/background.jpg
	ln -s `pwd`/images/background.jpg ~/.config/desktop/background.jpg
	wal -i ~/.config/desktop/background.jpg

install-mksh:
	rm -f ~/.mkshrc
	ln -s `pwd`/config/mksh/mkshrc ~/.mkshrc

install-vim:
	rm -Rf ~/.vim
	mkdir -p ~/.vim/autoload
	mkdir -p ~/.vim/bundle
	mkdir -p ~/.vim/pack/tpope/start
	rm -f ~/.vimrc
	ln -s `pwd`/config/vim/vimrc ~/.vimrc
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	git clone https://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe
	git clone https://github.com/tpope/vim-sensible.git ~/.vim/pack/tpope/start/vim-sensible
	git clone https://github.com/tpope/vim-fugitive.git ~/.vim/pack/tpope/start/vim-fugitive
	git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
	git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
	git clone https://github.com/elzr/vim-json.git ~/.vim/bundle/vim-json
	git clone https://github.com/lfe/vim-lfe.git ~/.vim/bundle/vim-lfe
	git clone https://github.com/Yggdroot/indentLine.git ~/.vim/bundle/indentLine

install-xr:
	rm -f ~/.Xresources
	ln -s `pwd`/config/Xresources ~/.Xresources

install-vifm:
	rm -f ~/.config/vifm/vifmrc
	rm -f ~/.config/vifm/scripts/vifmrun
	rm -f ~/.config/vifm/scripts/vifmimg
	mkdir -p ~/.config/vifm/scripts
	ln -s `pwd`/config/vifm/vifmrc ~/.config/vifm/vifmrc
	ln -s `pwd`/config/vifm/vifmrun ~/.config/vifm/scripts/vifmrun
	ln -s `pwd`/config/vifm/vifmimg ~/.config/vifm/scripts/vifmimg

install-fonts:
	mkdir -p ~/.fonts
	rm -f ~/.fonts/Inconsolata\ Nerd\ Font\ Complete\ Mono.otf
	ln -s `pwd`/fonts/Inconsolata\ Nerd\ Font\ Complete\ Mono.otf ~/.fonts/Inconsolata\ Nerd\ Font\ Complete\ Mono.otf

install-mimeinfo:
	mkdir -p ~/.local/share/applications
	rm -f ~/.local/share/applications/mimeinfo.cache
	ln -s `pwd`/config/mime/mimeinfo.cache ~/.local/share/applications/mimeinfo.cache
