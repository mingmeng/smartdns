#!/bin/sh

if [ ! -f /config/smartdns.conf ]; then
	mkdir /config
	cp -u /config.conf /config/smartdns.conf
fi

/bin/smartdns -f -x -c /config/smartdns.conf
