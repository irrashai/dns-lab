$TTL	864000

@	IN	SOA	SHERYL.COM.	admin.shery.com.	(
			2015011501	
			12h
			4h
			4d
			2h )

		NS	NS.SHERYL.COM.
ns		A	192.168.100.8

; Resource Records

www		A	192.168.100.8
		AAAA	2001:db8:ABCD:9831::1000

blog		A	192.168.100.8
www.blog	CNAME	blog

mail01		A	192.168.100.8
mail02		A	192.168.100.9
sheryl.com.	MX	mail01
		MX	mail02
