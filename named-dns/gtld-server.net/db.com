$TTL	1d

@	SOA	X.GTLD-SERVER.NET.	admin.root-server.net. (
		2015011501	;serial
		12h		;refresh
		4h		;retry
		4d		;expire
		2h		;minTTL
		)

			NS	X.GTLD-SERVER.NET.
X.GTLD-SERVER.NET.	A	192.168.100.251

; Delegation
sheryl.com.		NS	ns.sheryl.com.
ns.sheryl.com.		A	192.168.100.8
