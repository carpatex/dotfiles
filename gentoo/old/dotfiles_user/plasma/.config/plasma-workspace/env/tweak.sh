#!/bin/sh
export SAL_USE_VCLPLUGIN=qt6
if [ "${XDG_SESSION_TYPE}" = "wayland" ]; then
	export MOZ_ENABLE_WAYLAND=1
fi
