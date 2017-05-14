groupadd family
groupadd guest
groupadd star

# We don't need home folders (-M)
useradd -MG family alice
useradd -MG family cooper
useradd -MG guest baxter
useradd -MG star django
# Home folder is already created (-M)
useradd -M supinfo

# Because of earlier ssh setup
chown -R supinfo:supinfo /home/supinfo
