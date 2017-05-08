rc-update add sshd default

sed -i -E 's:^(#)?(PermitRootLogin)(.)*$:PermitRootLogin no:' \
  /etc/ssh/sshd_config
cat >> /etc/ssh/sshd_config << "EOF"
Match User supinfo
  PasswordAuthentication no
EOF

mkdir -p /home/supinfo/.ssh
echo "$PUBKEY" > /home/supinfo/.ssh/authorized_keys
