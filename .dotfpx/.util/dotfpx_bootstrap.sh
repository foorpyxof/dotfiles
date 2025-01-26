#!/bin/bash

Configure() {
  echo "Select your package manager:"
  select answer in "pacman" "apt-get"; do
    case $answer in
      "pacman" ) MANAGER="sudo pacman -S --needed --noconfirm"; break;;
      "apt-get" ) MANAGER="sudo apt-get install"; break;;
    esac
  done

  echo "packagemanager:$MANAGER" > $HOME/.dotfpx/config
}

mkdir $HOME/.dotfpx

Configure

# here go packages that need to be downloaded before ~/.dotfpx/bin/dotfpx_install.sh runs
$MANAGER neovim git

git clone https://github.com/LazyVim/starter $HOME/.config/nvim
rm -rf $HOME/.config/nvim/.git

git clone https://github.com/foorpyxof/dotfiles $HOME/.dotfpx-git
rm -rf $HOME/.dotfpx-git/.git

cp -rt $HOME/ $HOME/.dotfpx-git/* $HOME/.dotfpx-git/.*

$HOME/.dotfpx/bin/dotfpx_install.sh
