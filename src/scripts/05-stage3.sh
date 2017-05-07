curl -o stage3.tar.bz2 -L http://distfiles.gentoo.org/releases/amd64/autobuilds/20170504/stage3-amd64-nomultilib-20170504.tar.bz2
curl -o stage3.DIGESTS -L http://gentoo.osuosl.org/releases/amd64/autobuilds/current-stage3-amd64/stage3-amd64-nomultilib-20170504.tar.bz2.DIGESTS

[ -n "$(grep "$(openssl dgst -sha512 -r stage3.tar.bz2 | cut -d' ' -f 1)" \
  stage3.DIGESTS)" ] || echo 'ERROR: checksum failed'

tar xjpf stage3.tar.bz2 --xattrs --numeric-owner -C /mnt/gentoo
