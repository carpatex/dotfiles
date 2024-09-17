#!/bin/sh
ln -rsf $HOME/.config/foot/foot_def.ini $HOME/.config/foot/foot.ini
cd $HOME/devel/projects/dotfiles/random/suckless/st_def_keyboard
make 
make PREFIX=$HOME/.local install
