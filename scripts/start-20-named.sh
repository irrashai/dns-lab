#!/bin/bash

for n in {1..20}; do
	lxc exec server$n -- service named restart	
done
