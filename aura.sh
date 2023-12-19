ETH0_IP=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source $ETH0_IP

route add -net 192.170.4.0 netmask 255.255.252.0 gw 192.170.0.6
route add -net 192.170.8.0 netmask 255.255.248.0 gw 192.170.0.6
route add -net 192.170.0.8 netmask 255.255.255.252 gw 192.170.0.2
route add -net 192.170.0.12 netmask 255.255.255.252 gw 192.170.0.2
route add -net 192.170.2.0 netmask 255.255.254.0 gw 192.170.0.2
route add -net 192.170.0.128 netmask 255.255.255.128 gw 192.170.0.2
route add -net 192.170.0.16 netmask 255.255.255.252 gw 192.170.0.2
route add -net 192.170.0.20 netmask 255.255.255.252 gw 192.170.0.2