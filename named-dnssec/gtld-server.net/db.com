$TTL	1d

@	SOA	X.GTLD-SERVER.NET.	admin.gtld-server.net. (
		2014112702	;serial
		12h		;refresh
		4h		;retry
		4d		;expire
		2h		;minTTL
		)

			NS	X.GTLD-SERVER.NET.

; Delegation

cinangka.com.		NS	ns.cinangka.com.
ns.cinangka.com.	A	192.168.121.1
cinangka.com.		IN DS 58453 5 1 7454DB18D80C802B8CB5464F47442F97275BC909
cinangka.com.		IN DS 58453 5 2 7F50AE9F3677E1B499AA0FD0E77A685A51682179F71DB17DD6417185 3F1BC424

; Keys
$INCLUDE "Kcom.+005+51696.key" ;ZSK
$INCLUDE "Kcom.+005+16633.key" ;KSK
