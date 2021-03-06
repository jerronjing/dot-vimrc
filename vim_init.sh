#!/bin/bash

#1、back up origin vim config file and directory
mv ~/.vimrc ~/.vimrc.org
mv ~/.vim ~/.vim.org

#2、git sysc file and directory
git clone git@github.com:jerronjing/dot-vimrc.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc

#3、clone vundle project
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

#4、install vundle management
vim +BundleInstall +qall
