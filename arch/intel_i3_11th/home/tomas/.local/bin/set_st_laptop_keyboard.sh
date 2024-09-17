#!/bin/sh
ln -rsf $HOME/.config/foot/foot_laptop.ini $HOME/.config/foot/foot.ini
cd $HOME/devel/projects/dotfiles/random/suckless/st_laptop_keyboard
make 
make PREFIX=$HOME/.local install
