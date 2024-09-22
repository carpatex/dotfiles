[ -f ~/.xprofile ] && . ~/.xprofile
#exec i3
exec dbus-launch --exit-with-session i3
