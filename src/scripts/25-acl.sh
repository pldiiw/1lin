mkdir -p /home/supinfo/family-and-star-only
echo 'Hello Alice!' > /home/supinfo/family-and-star-only/Alice.txt
echo 'Paris -> Rome -> Shanghai' > /home/supinfo/family-and-star-only/holidays.txt

chown -R supinfo:supinfo /home/supinfo/family-and-star-only

setfacl -R -m u::--- -m g::--- -m o::--- /home/supinfo/family-and-star-only
setfacl -m g:family:rx -m g:star:rx /home/supinfo/family-and-star-only
setfacl -m u:alice:rw /home/supinfo/family-and-star-only/Alice.txt
setfacl -m g:family:rw /home/supinfo/family-and-star-only/holidays.txt
