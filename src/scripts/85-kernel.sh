emerge --quiet sys-kernel/gentoo-sources
cd /usr/src/linux
echo "$KERNEL_CONFIG" > .config
make -j5
# If no modules, skip
make modules_install || true
cp arch/x86_64/boot/bzImage /boot/vmlinuz-gentoo-1lin
cp System.map /boot/System.map-gentoo-1lin
cp .config /boot/config-gentoo-1lin

cd /
