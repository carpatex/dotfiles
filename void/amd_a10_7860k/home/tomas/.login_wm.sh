#!/bin/sh
if [ "${CHOSEN_WM}" = "x11" ] && [ -z "${DISPLAY}" ] && [ $(tty) = "/dev/tty1" ] && [ -z $(ls /tmp/.X11-unix) ]; then
  unset CHOSEN_WM
	startx
fi
if [ "${CHOSEN_WM}" = "wayland" ] && [ -z "${WAYLAND_DISPLAY}" ] && [ $(tty) = "/dev/tty1" ] && [ ! -S /run/user/1000/wayland-1 ]; then
	unset CHOSEN_WM
	startw
fi
