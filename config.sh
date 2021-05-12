#!/bin/bash

# Set to strict mode
set -euo pipefail

# Require: sudo
# $1: your prefered shell, bash or zsh
if [[ $# != 3 ]]; then
    echo "Usage $0 (bash|zsh) <git user name> <git user email>"
    exit 1
fi

shell=$1
name=$2
email=$3

sudo apt-get update
sudo apt-get install git vim tmux
if [[ $shell == "zsh" ]]; then
    sudo apt-get install zsh wget
fi

# Git config
cp .gitconfig $HOME
git config --global --add user.name "$name"
git config --global --add user.email "$email"

# Set up vundle for vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
cp .vimrc $HOME
echo "RUN VundleInstall in vim to finish the setup of plugins"
cp .tmux.conf $HOME

# Oh-my-zsh if using zsh
case "$shell" in
    zsh)
        sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        cp .zshrc $HOME
        ;;
    bash)
        ;;
    *)
        echo "Usage $0 (bash|zsh) <git user name> <git user email>"
        ;;
esac
