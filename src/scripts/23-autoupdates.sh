cat > /usr/bin/autoupdates << "EOF"
  #!/usr/bin/env bash

  mkdir -p /var/log/autoupdates
  now="$(date +%Y-%m-%dT%H:%M:%S%:z)"
  outlog="/var/log/autoupdates/update-$now.log"
  errlog="/var/log/autoupdates/update-$now-error.log"
  exec 1> $outlog 2> $errlog
  emerge --sync || emerge-webrsync
  emerge --update --deep --changed-use --with-bdeps=y @world
  # emerge --depclean
EOF
chmod 755 /usr/bin/autoupdates
cat > /usr/bin/autoupdates-flush-logs << "EOF"
  #!/usr/bin/env bash

  rm -f /var/log/autoupdates/*
EOF
chmod 755 /usr/bin/autoupdates-flush-logs

{ crontab -l; \
  echo '59 23 * * 1-5 /usr/bin/autoupdates'; \
  echo '0 0 1 * * /usr/bin/autoupdates-flush-logs'; } | crontab
