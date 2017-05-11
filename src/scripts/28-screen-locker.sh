emerge gnome-base/gdm
systemctl enable gdm.service

#For optimus ( Nvidia cards ) working
cat "xrandr --setprovideroutputsource modesetting NVIDIA-O"  >> /etc/gdm/Init/Default 
cat "xrandr --auto" >> /etc/gdm/Init/Default 
