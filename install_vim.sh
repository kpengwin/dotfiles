#!/bin/bash

#commented this out because its distro dependant
#sudo yum install -y vim curl

#install pathogen, then install pathogen plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs

#this is maybe complicated
#git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
#cd YouCompleteMe
#git submodule update --init --recursive
#./install.sh --clang-completer --system-libclang
