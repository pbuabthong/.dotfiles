#!/usr/bin/env bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "so ~/.dotfiles/vim/.vimrc" >> ~/.vimrc
echo "source-file ~/.dotfiles/tmux/.tmux.conf" >> ~/.tmux.conf
echo "source ~/.dotfiles/shell/.dotfiles_alias" >> ~/.bash_profile

echo "Installation script completed. Please go in vim then run"
echo "vim +PluginInstall"
echo "and in tmux"
echo "[C-a] + I"
echo "to complete the installation"
