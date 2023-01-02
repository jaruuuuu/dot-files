#!/usr/bin/env bash

REPO=$(dirname $(realpath $0))

#===============================================================================
# alacritty stuff
#===============================================================================

rm -rf ~/.config/alacritty
mkdir -p ~/.config/alacritty

git clone https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin

ln -s $REPO/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

#===============================================================================
# tmux stuff
#===============================================================================

rm -rf ~/.tmux.conf ~/.tmux/plugins
mkdir -p ~/.tmux/plugins

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect

ln -s $REPO/tmux/tmux.conf ~/.tmux.conf

#===============================================================================
# zsh stuff
#===============================================================================

rm -rf ~/.zprofile ~/.zshrc ~/.oh-my-zsh/custom/themes

ZSH= sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-history-substring-search ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search

ln -s $REPO/zsh/themes ~/.oh-my-zsh/custom/themes
ln -s $REPO/zsh/zprofile.conf ~/.zprofile
ln -s $REPO/zsh/zshrc.conf ~/.zshrc

