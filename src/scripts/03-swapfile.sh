dd if=/dev/zero of=/mnt/gentoo/swapfile bs=1024 count=524288
chown root:root /mnt/gentoo/swapfile
chmod 0600 /mnt/gentoo/swapfile
mkswap /mnt/gentoo/swapfile

swapon /mnt/gentoo/swapfile
