echo nameserver 192.168.122.1 > /etc/resolv.conf

route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.170.0.5

apt-get update -y
apt-get install isc-dhcp-relay -y

echo '
SERVERS="192.170.0.22"
INTERFACES="eth0 eth1 eth2"
OPTIONS=' > /etc/default/isc-dhcp-relay

echo 'net.ipv4.ip_forward=1' > /etc/sysctl.conf

service isc-dhcp-relay start

iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.170.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.170.4.2
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.170.4.2 -j DNAT --to-destination 192.170.0.10
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.170.0.10 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.170.0.10
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.170.0.10 -j DNAT --to-destination 192.170.4.2