#!/bin/bash

rm -rf ~/.bash ~/.vim
cp -fv bin/* ~/bin/
cp -rfv bash ~/.bash
cp -rfv vim ~/.vim
cp -fv bashrc ~/.bashrc
cp -fv vimrc ~/.vimrc
cp -fv inputrc ~/.inputrc
cp -fv gitconfig ~/.gitconfig

