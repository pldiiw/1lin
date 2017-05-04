set -eux
emerge x11-base/xorg-drivers x11-base/xorg-server
sed -i 's:USE=":USE="X git networkmanager nls pulseaudio icu gnome-keyring opengl jpeg :' /etc/portage/make.conf
echo 'INPUT_DEVICES="evdev"' >> /etc/portage/make.conf
echo 'xterm' > ~/.xinitrc
env-update
etc-update
source /etc/profile