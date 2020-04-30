#!/bin/bash

for container in {1..40}; do
	mac=`lxc exec server$container -- ifconfig -a |grep ether`
	echo "server$container $mac"
done
