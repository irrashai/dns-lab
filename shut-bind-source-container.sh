#!/bin/bash

for n in {1..40}; do
	lxc stop dev-server$n
done
