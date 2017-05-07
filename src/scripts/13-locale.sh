echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen
cat > /etc/env.d/02locale <<EOF
LANG="en_US.UTF-8"
LC_COLLATE="C"
EOF

# Reload env because of locale change
env-update
source /etc/profile
export PS1="(chroot) $PS1"
