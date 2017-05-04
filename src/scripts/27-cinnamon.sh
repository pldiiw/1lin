set -eux
emerge x11-libs/gtk+extra
emerge gnome-extra/cinnamon
rc-update add dbus default
rc-service dbus	start
rc-update add consolekit default
rc-service consolekit start
rc-service net.eno16777736 stop
rc-update del net.eno16777736 default
rc-service NetworkManager start
rc-update add NetworkManager default
echo "exec ck-launch-session dbus-launch cinnamon-session" > ~/.xinitrc