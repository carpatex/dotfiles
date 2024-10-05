#!/bin/sh
NVIM_CFG=${NVIM_CFG:-$HOME/.config/nvim}
NVIM_PLUGIN_DIR=$NVIM_CFG/pack/nvim/start
echo updating plugins on $NVIM_PLUGIN_DIR...
cd $NVIM_PLUGIN_DIR
for plugin in $(ls -d */); do
	cd $plugin
	echo updating $plugin...
	git pull
	cd ..
done
