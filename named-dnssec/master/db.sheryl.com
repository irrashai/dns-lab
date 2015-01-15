$TTL	864000

@	IN	SOA	SHERYL.COM.	admin.shery.com.	(
			2013072901	
			12h
			4h
			4d
			2h )

		NS	NS.SHERYL.COM.
ns		A	192.168.15.1
;ns		A	203.119.42.167
;                AAAA    2001:dc0:a000:4:3e07:54ff:fe77:b566

; Resource Records

www		A	203.119.42.100
		AAAA	2001:db8:ABCD:9831::1000
blog		A	203.119.42.101
www.blog	CNAME	blog
mail		A	203.119.42.102
wifi		A	203.119.42.103
