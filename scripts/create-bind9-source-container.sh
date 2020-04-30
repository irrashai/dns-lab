#!/bin/bash

for n in {6..40}; do
	lxc copy centos-bind9-source/devtools dev-server$n
	lxc start dev-server$n
done
