# Jarkom-Modul-5-A03-2023

Aura

```
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 192.170.0.5
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.170.0.1
	netmask 255.255.255.252
```

Heiter

```
auto eth0
iface eth0 inet static
	address 192.170.0.6
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 192.170.8.1
	netmask 255.255.248.0

auto eth2
iface eth2 inet static
	address 192.170.4.1
	netmask 255.255.252.0
```

Frieren 

```
auto eth0
iface eth0 inet static
	address 192.170.0.2
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 192.170.0.9
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.170.0.13
	netmask 255.255.255.252
```

Himmel

```
auto eth0
iface eth0 inet static
	address 192.170.0.14
	netmask 255.255.255.252
        gateway 192.170.0.13

auto eth1
iface eth1 inet static
	address 192.170.0.129
	netmask 255.255.255.128

auto eth2
iface eth2 inet static
	address 192.170.2.1
	netmask 255.255.254.0
```

Fern

```
auto eth0
iface eth0 inet static
	address 192.170.0.130
	netmask 255.255.255.128
        gateway 192.170.0.129

auto eth1
iface eth1 inet static
	address 192.170.0.21
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.170.0.17
	netmask 255.255.255.252
```

Sein

```
auto eth0
iface eth0 inet static
	address 192.170.4.2
	netmask 255.255.252.0
    gateway 192.170.4.1
```

Stark

```
auto eth0
iface eth0 inet static
	address 192.170.0.10
	netmask 255.255.255.252
    gateway 192.170.0.9
```

Richter

```
auto eth0
iface eth0 inet static
	address 192.170.0.18
	netmask 255.255.255.252
    gateway 192.170.0.17
```

Revolte

```
auto eth0
iface eth0 inet static
	address 192.170.0.22
	netmask 255.255.255.252
    gateway 192.170.0.21
```

GrobeForest

```
auto eth0
iface eth0 inet dhcp
```

TurkRegion

```
auto eth0
iface eth0 inet dhcp
```

LaubHills

```
auto eth0
iface eth0 inet dhcp
```

SchwerMountains

```
auto eth0
iface eth0 inet dhcp
```

Bashrc----------------------------------------------------------------------

Aura 

```
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 192.170.0.0/16

route add -net 192.170.4.0 netmask 255.255.252.0 gw 192.170.0.6
route add -net 192.170.8.0 netmask 255.255.248.0 gw 192.170.0.6
route add -net 192.170.0.8 netmask 255.255.255.252 gw 192.170.0.2
route add -net 192.170.0.12 netmask 255.255.255.252 gw 192.170.0.2
route add -net 192.170.2.0 netmask 255.255.254.0 gw 192.170.0.2
route add -net 192.170.0.128 netmask 255.255.255.128 gw 192.170.0.2
route add -net 192.170.0.16 netmask 255.255.255.252 gw 192.170.0.2
route add -net 192.170.0.20 netmask 255.255.255.252 gw 192.170.0.2

apt-get update
apt-get install isc-dhcp-relay -y
```

forward req: 192.170.0.22 (ip revolte/dhcp server)
interface: eth1 eth2

echo '
net.ipv4.ip_forward=1
' >> /etc/sysctl.conf (atau tinggal unkomen)

service isc-dhcp-relay start


Heiter
```
echo nameserver 192.168.122.1 > /etc/resolv.conf
```

Frieren

```
echo nameserver 192.168.122.1 > /etc/resolv.conf

route add -net 192.170.2.0 netmask 255.255.254.0 gw 192.170.0.14
route add -net 192.170.0.128 netmask 255.255.255.128 gw 192.170.0.14
route add -net 192.170.0.16 netmask 255.255.255.252 gw 192.170.0.14
route add -net 192.170.0.20 netmask 255.255.255.252 gw 192.170.0.14
```

Himmel

```
echo nameserver 192.168.122.1 > /etc/resolv.conf

route add -net 192.170.0.20 netmask 255.255.255.252 gw 192.170.0.130
```

Fern

```
echo nameserver 192.168.122.1 > /etc/resolv.conf
```

TurkRegion

```
echo nameserver 192.168.122.1 > /etc/resolv.conf
```

GrobeForest

```
echo nameserver 192.168.122.1 > /etc/resolv.conf
```

LaubHills

```
echo nameserver 192.168.122.1 > /etc/resolv.conf
```

SchwerMountains

```
echo nameserver 192.168.122.1 > /etc/resolv.conf
```

Sein

```
echo nameserver 192.168.122.1 > /etc/resolv.conf
```

Stark

```
echo nameserver 192.168.122.1 > /etc/resolv.conf
```

Richter

```
echo nameserver 192.168.122.1 > /etc/resolv.conf
```

Revolte

```
echo nameserver 192.168.122.1 > /etc/resolv.conf

apt-get update
apt-get install isc-dhcp-server
```

echo 'INTERFACESv4="eth0"' > /etc/default/isc-dhcp-server
./subnet.sh
service isc-dhcp-server restart

subnet.sh

```
echo '
#TurkRegion
subnet 192.170.8.0 netmask 255.255.248.0 {
    range 192.170.8.2 192.170.12.34;
    option routers 192.170.8.1;
    option broadcast-address 192.170.15.255;
    option domain-name-servers 192.170.0.18;
    default-lease-time 600;
    max-lease-time 7200;
}

#GrobeForest
subnet 192.170.4.0 netmask 255.255.252.0 {
    range 192.170.4.2 192.170.6.4;
    option routers 192.170.4.1;
    option broadcast-address 192.170.7.255;
    option domain-name-servers 192.170.0.18;
    default-lease-time 600;
    max-lease-time 7200;
}

# Laubhill
subnet 192.170.2.0 netmask 255.255.254.0 {
    range 192.170.2.2 192.170.3.2;
    option routers 192.170.2.1;
    option broadcast-address 192.170.3.255;
    option domain-name-servers 192.170.0.18;
    default-lease-time 600;
    max-lease-time 7200;
}

#SchwerMountains
subnet 192.170.0.128 netmask 255.255.0.255 {
    range 192.170.0.131 192.170.0.195;
    option routers 192.170.0.129;
    option broadcast-address 192.170.0.255;
    option domain-name-servers 192.170.0.18;
    default-lease-time 600;
    max-lease-time 7200;
} ' > /etc/dhcp/dhcp.conf

```

no 1

bashrc aura

```
IP ETH0="$(ip -br a | grep eth0 | awk '{print $NF}' | cut -d'/' -f1)"
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source "$IPETH0" -s 192.170.0.0/20
```

no 2

bashrc aura

```
iptables -A FORWARD -d 192.170.0.22 -i eth0 -p tcp -j DROP
iptables -A FORWARD -d 192.170.0.22 -i eth0 -p udp -j DROP
```

ETH0_IP=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source $ETH0_IP