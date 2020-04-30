#!/bin/bash

for n in {1..40}; do
	echo "Copying file to Server$n"
	lxc exec server$n -- mv /var/named/master /var/named/chroot/var/named/
	lxc exec server$n -- chown -R named.named  /var/named
	lxc exec server$n -- cd /var/named && ln -s /var/named/chroot/var/named/master .
	lxc exec server$n -- chown named.named /etc/named.conf
	lxc exec server$n -- chown named.named /etc/rndc.conf
done
