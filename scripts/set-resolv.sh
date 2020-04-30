for n in {1..20}; do
        echo "Setting up resolver.."
	 lxc file push resolv.conf server$n/etc/resolv.conf
done
 lxc file push resolv.conf root-server/etc/resolv.conf
 lxc file push resolv.conf gtld-server/etc/resolv.conf
