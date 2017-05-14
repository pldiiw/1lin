nb_cpu_cores="$(grep processor /proc/cpuinfo | wc -l)"
echo "MAKEOPTS=\"-j${nb_cpu_cores}\"" >> /mnt/gentoo/etc/portage/make.conf
sed -i -E 's:^(USE)(.)*:USE="bindist minimal udev static-libs libkms":' \
  /mnt/gentoo/etc/portage/make.conf
mirrorselect -o >> /mnt/gentoo/etc/portage/make.conf

mkdir /mnt/gentoo/etc/portage/repos.conf
cp /mnt/gentoo/usr/share/portage/config/repos.conf \
  /mnt/gentoo/etc/portage/repos.conf/gentoo.conf
