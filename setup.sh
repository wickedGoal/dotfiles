#!/bin/bash

# This is the setup script for my config. The idea is to be able to run
# this after cloning the repo on a Mac or Ubuntu (WSL) system and be up
# and running very quickly.

# create directories
export XDG_CONFIG_HOME="$HOME"/.config
# mkdir -p "$XDG_CONFIG_HOME"/alacritty
# mkdir -p "$XDG_CONFIG_HOME"/alacritty/themes

# git clone https://github.com/alacritty/alacritty-theme "$XDG_CONFIG_HOME"/alacritty/themes

# install programs
sudo apt update
sudo apt install git zsh fzf tmux -y

# set zsh as default
chsh -s $(which zsh)

# Symbolic links

# ln -sf "$PWD/alacritty.toml" "$XDG_CONFIG_HOME"/alacritty/alacritty.toml
# ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
# ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/.zshrc" "$HOME"/.zshrc
ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
# -sf makes a new directory inside the destination folder
ln -s "$PWD/nvim/" "$XDG_CONFIG_HOME"/nvim/
