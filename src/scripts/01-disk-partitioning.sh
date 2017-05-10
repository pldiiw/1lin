# Partition disk drive
parted -a opt /dev/sda mktable gpt
parted -a opt /dev/sda mkpart primary 0% 4MiB
parted -a opt /dev/sda mkpart primary ext2 4MiB 132MiB
parted -a opt /dev/sda mkpart primary ext4 132MiB 100%

parted -a opt /dev/sda set 1 bios_grub on
parted -a opt /dev/sda set 2 boot on

# Create filesystems on partitions
mkfs.ext2 -T small /dev/sda2
mkfs.ext4 -j /dev/sda3
