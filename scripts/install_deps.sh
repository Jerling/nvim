#! /bin/sh
#
# install_deps.sh
# Copyright (C) 2020 Jerling <linjieli001@qq.com>
#
# Distributed under terms of the MIT license.
#


DIST=`cat /etc/issue | awk '{printf $1}'`
pkgs='git node yarn universal-ctags gdb neovim python-pip ripgrep bat'

echo "You USE $DIST Linux distribution"

case $DIST in
	"Arch ")
		pacman -S git npm universal-ctags gdb neovim ruby python-pip
		npm install -g neovim
		gem install neovim
		if [ @? != 0 ]; then
			sudo pacman -S git universal-ctags gdb neovim ruby python-pip
			sudo npm install -g neovim
			sudo gem install neovim
		fi
		pip install PyYML pynvim
		;;
	*)
		echo "Unsuport Linux distribution"
		echo "Please install ${pkgs} by yourself"
esac
