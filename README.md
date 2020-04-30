# DNS LAB

This is an example DNS lab setup, with its own local/private root and gTLD servers. It contains config for root, gtld, recursive and master nameservers.

There are two folders with sample config:
* named-dns = contains configs for DNS-only implementation
* named-dnssec = contains configs for DNSSEC-enabled servers

### Requirements

At least three running DNS BIND servers are required.
* Root server - the rootserver maintained by the instructor
* GTLD server - the gtld server maintained by the instructor
* Authoritative+Recursive server - one or more hosts for participant use

For the participant servers, we can have two sets.
* dev server - used for the dnssec validation lab; uses the actual root.ca/named.cache from the Internet (pointing to a-m.root-servers.net)
* serverX - used for the dnssec signing lab; uses the lab root.ca/named.cache pointing to lab root and gtld


### Running the Lab using LXC

The steps assume that the base servers `centos-bind9` and `centos-bind9-source` have already been set up.

* Create the dev servers by cloning the centos-bind9 container

```
create-bind9-source-containers.sh
```

* Create the auth servers by cloning the centos-bind9 containers:

* Run the servers:

```
create-bind9-rpm-container.sh
```

* Run the servers:

```
start-20-dev-containers.sh
start-20-bind-containers.sh
```

* Once the lab finishes, shutdown the servers:

```
shut.containers-sh
shut-bind-source-container.sh
```

### Some utilities 

* Start BIND on all servers

```
start-20-named.sh
```

* Stop BIND on all servers

```
start-20-named.sh
```

* For the dnssec lab, the trusted-keys file must be copied to all containers:

```
cp-trusted-keys-to-containers.sh
```

* To install a missing package

```
install-package.sh <pkg-name>
```
