#!/bin/bash

for n in {1..20}; do
	echo "Starting Server$n.."
	lxc start server$n
done
for n in {1..20}; do
        echo "Setting up resolver.." 
	lxc exec server$n -- service named restart	
	lxc file push resolv.conf server$n/etc/resolv.conf
done
 lxc file push resolv.conf root-server/etc/resolv.conf
 lxc file push resolv.conf gtld-server/etc/resolv.conf
