cat > /etc/fstab <<EOF
/dev/sda2 /boot ext2 defaults,noatime 0 2
/dev/sda3 / ext4 noatime 0 1
/swapfile none swap sw 0 0
EOF
