#!/usr/bin/env bash
rm -rf ~/.antigen ~/.emacs.d ~/.oh-my-zsh ~/.zshrc
curr_dir=$(cd `dirname $0` && pwd)
ln -sf ${curr_dir}/antigen ~/.antigen
ln -sf ${curr_dir}/zshrc ~/.zshrc
ln -sf ${curr_dir}/gitconfig ~/.gitconfig
ln -sf ${curr_dir}/gitignore ~/.gitignore

echo "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew doctor

# echo "Installing emacs"
# brew install emacs

echo "Installing git"
brew install git
brew install git-flow

# echo "Installing build tools"
# brew install ant
# brew install maven
# brew install sbt

# echo "Installing aws client"
# brew install awscli

# echo "Installing elasticsearch"
# brew install elasticsearch

# echo "Installing hadoop"
# brew install hadoop

# echo "Installing mongo"
# brew install mongodb

echo "Configuring zsh"
chsh -s /bin/zsh
curl -L http://install.ohmyz.sh | sh

echo "Installing python"
brew install python
brew install pkg-config
pip install virtualenv
pip install numpy
pip install scipy
pip install scikit-learn
pip install matplotlib
# pip install gensim
# pip install Theano
# pip install beautifulsoup4
# pip install awscli
# pip install elasticsearch
# pip install mrjob
# pip install pymongo

cd ${curr_dir}
echo "Environment has been configured."
