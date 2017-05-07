for script in $(ls -1 scripts |
  sed -n -E '1,/[0-9]{2}-chroot.sh/p' |
  sed -e 's:^:scripts/:'); do
  source $script
done
