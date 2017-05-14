cd /usr/src/linux
echo "$SPLASH_KERNEL_CONFIG" > .config
make -j5
make install

cat > /etc/portage/package.use/plymouth << "EOF"
sys-kernel/genkernel-next plymouth
>=x11-libs/libdrm-2.4.75 libkms
EOF

emerge sys-boot/plymouth
plymouth-set-default-theme spinfinity

MAKEOPTS='-j1' emerge sys-kernel/genkernel-next

sed -i -E 's:^(#)?(SPLASH)(.)*:SPLASH="no":' \
  -E 's:^(#)?(PLYMOUTH)(.)*:PLYMOUTH="yes":' \
  -E 's:^(#)?(PLYMOUTH_THEME)(.)*:PLYMOUTH_THEME="spinfinity":' \
  /etc/genkernel.conf
sed -i -E 's:^(#)?(rc_interactive)(.)*:rc_interactive="NO":' /etc/rc.conf

genkernel initramfs
