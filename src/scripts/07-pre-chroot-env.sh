# DNS info
cp -L /etc/resolv.conf /mnt/gentoo/etc/resolv.conf

# Mount pseudo-fs for chroot
mount -t proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
