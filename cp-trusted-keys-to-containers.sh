#!/bin/bash

for n in {1..40}; do
	echo "Copying trusted-keys to Server$n"
	lxc file push trusted-keys server$n/var/named/master/
done
