#!/bin/sh

# install neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh && rm -rf install.sh

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

rm -rf ~/.vimrc && ln -s .vimrc ~/.vimrc
rm -rf ~/.bashrc-git && ln -s .bashrc-git ~/.bashrc-git
