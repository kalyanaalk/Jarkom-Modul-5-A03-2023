# Jarkom-Modul-5-A03-2023

Kelompok: A03

Nama: Kalyana Putri Al Kanza

NRP: 5025211137

## Topologi

![image]()

![image]()

## Konfigurasi

### Heiter

```
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
	address 192.170.0.6
	netmask 255.255.255.252
        gateaway 192.170.0.5

auto eth1
iface eth1 inet static
	address 192.170.8.1
	netmask 255.255.248.0

auto eth2
iface eth2 inet static
	address 192.170.4.1
	netmask 255.255.252.0
```

### Aura

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

### Frieren

```
auto eth0
iface eth0 inet static
	address 192.170.0.2
	netmask 255.255.255.252
        gateway 192.170.0.1

auto eth1
iface eth1 inet static
	address 192.170.0.9
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 192.170.0.13
	netmask 255.255.255.252
```

### Himmel

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

### Fern

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

### GrobeForest

```
auto eth0
iface eth0 inet dhcp
```

### TurkRegion

```
auto eth0
iface eth0 inet dhcp
```

### LaubHills

```
auto eth0
iface eth0 inet dhcp
```

### SchwerMountains

```
auto eth0
iface eth0 inet dhcp
```

### Sein

```
auto eth0
iface eth0 inet static
	address 192.170.4.2
	netmask 255.255.252.0
    gateway 192.170.4.1
```

### Stark

```
auto eth0
iface eth0 inet static
	address 192.170.0.10
	netmask 255.255.255.252
    gateway 192.170.0.9
```

### Richter

```
auto eth0
iface eth0 inet static
	address 192.170.0.18
	netmask 255.255.255.252
    gateway 192.170.0.17
```

### Revolte

```
auto eth0
iface eth0 inet static
	address 192.170.0.22
	netmask 255.255.255.252
    gateway 192.170.0.21
```

## Routing

### Heiter

```
route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.170.0.5
```

### Himmel

```
route add -net 192.170.0.20 netmask 255.255.255.252 gw 192.170.0.130
route add -net 192.170.0.16 netmask 255.255.255.252 gw 192.170.0.130
```

### Aura

```
route add -net 192.170.4.0 netmask 255.255.252.0 gw 192.170.0.6
route add -net 192.170.8.0 netmask 255.255.248.0 gw 192.170.0.6
route add -net 192.170.0.8 netmask 255.255.255.252 gw 192.170.0.2
route add -net 192.170.0.12 netmask 255.255.255.252 gw 192.170.0.2
route add -net 192.170.2.0 netmask 255.255.254.0 gw 192.170.0.2
route add -net 192.170.0.128 netmask 255.255.255.128 gw 192.170.0.2
route add -net 192.170.0.16 netmask 255.255.255.252 gw 192.170.0.2
route add -net 192.170.0.20 netmask 255.255.255.252 gw 192.170.0.2
```

### Frieren

```
route add -net 192.170.2.0 netmask 255.255.254.0 gw 192.170.0.14
route add -net 192.170.0.128 netmask 255.255.255.128 gw 192.170.0.14
route add -net 192.170.0.16 netmask 255.255.255.252 gw 192.170.0.14
route add -net 192.170.0.20 netmask 255.255.255.252 gw 192.170.0.14
```

### Fern

```
route add -net 0.0.0.0 netmask 0.0.0.0 gw 192.170.0.129
```

### GrobeForest

### TurkRegion

### LaubHills

### SchwerMountains

## DHCP Setup

### DHCP Server (Revolte)

```
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
```

### DHCP Relay (Heiter, Himmel)

```
apt-get update -y
apt-get install isc-dhcp-relay -y

echo '
SERVERS="192.170.0.22"
INTERFACES="eth0 eth1 eth2"
OPTIONS=' > /etc/default/isc-dhcp-relay

echo 'net.ipv4.ip_forward=1' > /etc/sysctl.conf

service isc-dhcp-relay start
```
