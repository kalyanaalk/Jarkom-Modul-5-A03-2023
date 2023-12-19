echo nameserver 192.168.122.1 > /etc/resolv.conf

apt-get update -y
apt-get install isc-dhcp-server -y
apt-get install netcat -y

echo '
INTERFACESv4="eth0"
INTERFACESv6=' > /etc/default/isc-dhcp-server

echo '
subnet 192.170.0.0 netmask 255.255.255.252 {

}

subnet 192.170.0.4 netmask 255.255.255.252 {

}

subnet 192.170.8.0 netmask 255.255.248.0 {
    range 192.170.8.2 192.170.12.34;
    option routers 192.170.8.1;
    option broadcast-address 192.170.15.255;
    option domain-name-servers 192.170.0.18;
}

subnet 192.170.4.0 netmask 255.255.252.0 {
    range 192.170.4.2 192.170.6.4;
    option routers 192.170.4.1;
    option broadcast-address 192.170.7.255;
    option domain-name-servers 192.170.0.18;
}

subnet 192.170.0.8 netmask 255.255.255.252 {

}

subnet 192.170.0.12 netmask 255.255.255.252 {

}

subnet 192.170.2.0 netmask 255.255.254.0 {
    range 192.170.2.2 192.170.3.2;
    option routers 192.170.2.1;
    option broadcast-address 192.170.3.255;
    option domain-name-servers 192.170.0.18;
}

subnet 192.170.0.128 netmask 255.255.255.128 {
    range 192.170.0.131 192.170.0.195;
    option routers 192.170.0.129;
    option broadcast-address 192.170.0.255;
    option domain-name-servers 192.170.0.18;
}

subnet 192.170.0.16 netmask 255.255.255.252 {

}

subnet 192.170.0.20 netmask 255.255.255.252 {

}' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server start

iptables -A INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP