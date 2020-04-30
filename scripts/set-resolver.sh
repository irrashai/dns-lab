#!/bin/bash

for container in {1..40}; do
	lxc exec dev-server$container -- yum install -y $1
done
#shutdown -h now
