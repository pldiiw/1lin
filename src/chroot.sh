{ echo "PUBKEY=$(cat rsa_key_supnfo.sh)";
  cat $(ls -1 scripts |
    sed -n -E '/[0-9]{2}-begin-chroot.sh/,/[0-9]{2}-end-chroot.sh/p' |
    sed -e 's:^:scripts/:'); } | chroot /mnt/gentoo /bin/bash
