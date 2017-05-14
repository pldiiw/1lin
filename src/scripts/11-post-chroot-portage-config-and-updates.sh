emerge-webrsync || true
emerge --sync --quiet
eselect profile set 9
emerge --update --deep --newuse --quiet @world
