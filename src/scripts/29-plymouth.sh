#Enable "Bootup logo" into Device Drivers => Graphics Support

#For intel cards
#Into the kernel
#Enable "Enable modesetting on intel by default" && "Intel 8xx/9xx/G3x/G4x/HD Graphics" into Devices drivers => Staging drivers

#For Nouveau card ( Nvidia)
#Into the kernel
#Enable "Nouveau (nVidia) cards" into Device drivers => Graphics support => Direct Rendering Manager ( X Free96 4.1.0 and higher DRI support)

#For radeon cards
#Into the kernel
#We need to enable "Enable modesettting on radeon by default" on Devices drivers => Staging drivers
emerge sys-boot/plymouth
emerge sys-boot/plymouth-openrc-plugin
echo "sys-kernel/genkernel-next plymouth" >> /etc/portage/package.use
emerge sys-kernel/genkernel-next
echo ">=sys-boot/plymouth-0.9.0" >> /etc/portage/package.mask
sed -i 's:rc_interactive="YES":rc_interactive="NO"' /etc/rc.conf
grub-mkconfig -o /boot/grub/grub.cfg
genkernel initramfs


