echo nameserver 192.168.122.1 > /etc/resolv.conf

route add -net 192.170.0.20 netmask 255.255.255.252 gw 192.170.0.130
route add -net 192.170.0.16 netmask 255.255.255.252 gw 192.170.0.130

apt-get update -y
apt-get install isc-dhcp-relay -y

echo '
SERVERS="192.170.0.22"
INTERFACES="eth0 eth1 eth2"
OPTIONS=' > /etc/default/isc-dhcp-relay

echo 'net.ipv4.ip_forward=1' > /etc/sysctl.conf

service isc-dhcp-relay start