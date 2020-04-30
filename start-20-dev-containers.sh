#!/bin/bash

for n in {1..20}; do
	echo "Starting Server$n.."
	lxc start server$n
done
for n in {1..20}; do
        echo "Setting up resolver.." 
	lxc exec dev-server$n -- service named restart	
	lxc file push resolv.conf server$n/etc/resolv.conf
done
