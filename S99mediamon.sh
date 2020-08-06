#!/bin/sh
# /usr/syno/etc/rc.d/S99mediamon.sh

case "$1" in
  start|"")
    #start the monitoring daemon
    nohup env LC_ALL=en_US.utf8 python3 /volume1/homes/admin/mediamon.py
    ;;
  restart|reload|force-reload)
    echo "Error: argument '$1' not supported" >&2
    exit 3
    ;;
  stop)
    kill `cat /var/run/mediamon.pid`
    ;;
  *)
    echo "Usage: S99mediamon.sh [start|stop]" >&2
    exit 3
    ;;
esac
