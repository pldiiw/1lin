cat > /etc/conf.d/hostname << "EOF"
hostname="1lin"
dns_domain_lo="home"
EOF

emerge --quiet net-misc/dhcpcd
echo 'config_enp0s3="dhcp"' > /etc/conf.d/net

emerge --quiet --noreplace net-misc/netifrc
cd /etc/init.d
ln -s net.lo net.enp0s3
rc-update add net.enp0s3 default
cd /

echo '127.0.0.1 1lin.home 1lin localhost' > /etc/hosts
