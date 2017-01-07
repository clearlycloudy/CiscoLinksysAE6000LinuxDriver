#!/bin/sh

start() {
    sleep 5s
    service network-manager stop
    sleep 3s
    service network-manager start
    sleep 5s
    ifconfig ra0 up
    sleep 4s
    service network-manager restart
    return 0
}

stop() {
    return 0
}

case "$1" in
    start)
	start
	;;
    stop)
	stop
	;;
    *)
	;;
esac

exit 0
