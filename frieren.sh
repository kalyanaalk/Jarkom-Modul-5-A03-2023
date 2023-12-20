echo nameserver 192.168.122.1 > /etc/resolv.conf

route add -net 192.170.2.0 netmask 255.255.254.0 gw 192.170.0.14
route add -net 192.170.0.128 netmask 255.255.255.128 gw 192.170.0.14
route add -net 192.170.0.16 netmask 255.255.255.252 gw 192.170.0.14
route add -net 192.170.0.20 netmask 255.255.255.252 gw 192.170.0.14

iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.170.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.170.4.2
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.170.4.2 -j DNAT --to-destination 192.170.0.10
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.170.0.10 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.170.0.10
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.170.0.10 -j DNAT --to-destination 192.170.4.2