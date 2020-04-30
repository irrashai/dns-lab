#!/bin/bash

for n in {1..40}; do
	echo "Shutting down server$n.."
	lxc stop server$n
done
