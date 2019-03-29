# DNS LAB

This is an example DNS lab setup, with its own local/private root and gTLD servers. It contains config for root, gtld, recursive and master nameservers.

There are two folders:
* named-dns = contains configs for DNS-only implementation
* named-dnssec = contains configs for DNSSEC-enabled servers

Three running DNS BIND server are required (either VM or native hosts). 
