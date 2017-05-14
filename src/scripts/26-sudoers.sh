emerge --quiet app-admin/sudo

cat > /etc/sudoers.d/supinfo << "EOF"
supinfo ALL=(ALL:ALL) ALL
EOF

cat > /etc/sudoers.d/family << "EOF"
%family ALL=(ALL:ALL) NOPASSWD: /bin/date
EOF
