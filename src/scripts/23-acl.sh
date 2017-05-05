mkdir /home/supinfo/guestnotallowed
touch alice.txt
touch holidays.txt

setfacl -m g:family:r guestnotallowed
setfacl -m g:star:r guestnotallowed
setfacl -m u:Alice:rw alice.txt
setfacl -m g:family:rw holidays

