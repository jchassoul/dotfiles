install: install-termite install-bspwm install-tmux install-desktop\
	install-mksh install-vim install-xr install-xs install-fonts

git: install-git

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/config/git/gitconfig ~/.gitconfig

install-termite:
	mkdir -p ~/.config/termite
	rm -f ~/.config/termite/config
	ln -s `pwd`/config/termite/config ~/.config/termite/config

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
	ln -s `pwd`/config/tmux/tmux.conf ~/.tmux.conf

install-desktop:
	mkdir -p ~/.config/desktop/
	rm -f ~/.config/desktop/background.jpg
	ln -s `pwd`/images/ophelia.jpg ~/.config/desktop/background.jpg
	wal -i ~/.config/desktop/background.jpg
	mkdir -p ~/.local/share/applications
	rm -f ~/.local/share/applications/mimeinfo.cache
	ln -s `pwd`/config/mime/mimeinfo.cache ~/.local/share/applications/mimeinfo.cache

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
	git clone https://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/plugins/start/VimCompletesMe
	git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator
	git clone https://github.com/jremmen/vim-ripgrep.git ~/.vim/pack/plugins/start/vim-ripgrep
	git clone https://github.com/tomasiser/vim-code-dark.git ~/.vim/pack/plugins/start/vim-code-dark
	git clone -b build https://github.com/davisdude/vim-love-docs ~/.vim/pack/plugins/start/vim-love-docs
	git clone https://github.com/vim-utils/vim-man.git ~/.vim/pack/plugins/start/vim-man
	git clone https://github.com/tpope/vim-eunuch.git ~/.vim/pack/tpope/start/vim-eunuch
	git clone https://github.com/tpope/vim-fugitive.git ~/.vim/pack/tpope/start/vim-fugitive
	git clone https://github.com/tpope/vim-sensible.git ~/.vim/pack/tpope/start/vim-sensible
	git clone https://github.com/tpope/vim-surround.git ~/.vim/pack/tpope/start/vim-surround
	git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim	
	git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
	git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
	git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/vimwiki
	git clone https://github.com/chrisbra/Colorizer ~/.vim/bundle/Colorizer
	git clone https://github.com/dhruvasagar/vim-table-mode.git ~/.vim/bundle/table-mode
	git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
	git clone https://github.com/elzr/vim-json.git ~/.vim/bundle/vim-json
	git clone https://github.com/lfe/vim-lfe.git ~/.vim/bundle/vim-lfe
	git clone https://github.com/severin-lemaignan/vim-minimap.git ~/.vim/bundle/vim-minimap
	git clone https://github.com/Yggdroot/indentLine.git ~/.vim/bundle/indentLine
	git clone https://github.com/edkolev/erlang-motions.vim ~/.vim/bundle/erlang-motions.vim
	git clone https://github.com/edkolev/tmuxline.vim ~/.vim/bundle/tmuxline.vim
	git clone https://github.com/jmcantrell/vim-virtualenv.git ~/.vim/bundle/virtualenv

install-xs:
	rm -f ~/.xsession
	ln -s `pwd`/config/Xsession ~/.xsession

install-xr:
	rm -f ~/.Xresources
	ln -s `pwd`/config/Xresources ~/.Xresources

install-fonts:
	mkdir -p ~/.fonts
	rm -f ~/.fonts/Inconsolata\ Nerd\ Font\ Complete\ Mono.otf
	ln -s `pwd`/fonts/Inconsolata\ Nerd\ Font\ Complete\ Mono.otf ~/.fonts/Inconsolata\ Nerd\ Font\ Complete\ Mono.otf
