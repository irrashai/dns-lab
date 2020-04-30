# DNS LAB

This is an example DNS lab setup, with its own local/private root and gTLD servers. It contains config for root, gtld, recursive and master nameservers.

There are two folders with sample config:
* named-dns = contains configs for DNS-only implementation
* named-dnssec = contains configs for DNSSEC-enabled servers

### Requirements

At least three running DNS BIND server are required (either VM or native hosts). 
* Root server - the rootserver maintained by the instructor
* GTLD server - the gtld server maintained by the instructor
* Authoritative+Recursive server - one or more hosts for participant use

For the participant servers, we can have two sets.
* dev server - used for the dnssec validation lab; uses the actual root.ca/named.cache from the Internet (pointing to a-m.root-servers.net)
* serverX - used for the dnssec signing lab; uses the lab root.ca/named.cache pointing to lab root and gtld


### Running the Lab using LXC

* Run `start-bind-containers.sh`
