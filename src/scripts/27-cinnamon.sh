emerge x11-libs/gtk+extra
emerge gnome-extra/cinnamon
rc-update add dbus default
rc-update add consolekit default
rc-update add NetworkManager default
echo "exec ck-launch-session dbus-launch cinnamon-session" > ~/.xinitrc