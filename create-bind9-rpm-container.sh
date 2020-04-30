#!/bin/bash

for container in {1..40}; do
	lxc copy centos-bind9/bind911 server$container
	lxc start server$container
	lxc exec server$container -- ifconfig -a |grep ether
done
