#!/bin/sh
for pkg in $@
do
	git clone https://aur.archlinux.org/${pkg}.git
done
