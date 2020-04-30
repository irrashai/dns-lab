#!/bin/bash

for n in {1..40}; do
	echo "Starting Server$n"
	lxc start server$n
done
