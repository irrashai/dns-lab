#!/bin/bash

for container in {1..40}; do
	ip=`lxc exec server$container -- ifconfig -a |grep broadcast |awk '{print $2}'`
	echo "server$container $ip"
done
