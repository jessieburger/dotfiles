#!/bin/sh

# invoked as:
# bash <(curl -s https://raw.githubusercontent.com/jessieburger/dotfiles/master/infect.sh)

git clone --recursive https://github.com/jessieburger/dotfiles $HOME/dotfiles
cd $HOME/dotfiles
./setup.sh