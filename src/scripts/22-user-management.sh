groupadd family
newgrps family
groupadd guest
newgrps guest
groupadd star
newgrps star

useradd -g family Alice
useradd -g family Cooper
useradd -g guest Baxter
useradd -g star Django
useradd -m supinfo