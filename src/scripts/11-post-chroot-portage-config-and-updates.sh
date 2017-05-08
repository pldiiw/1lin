emerge-webrsync || true
emerge --sync --quiet
emerge --update --deep --newuse --quiet @world

# Configure USE flag
