# Jarkom-Modul-5-A03-2023

Kelompok: A03

Nama: Kalyana Putri Al Kanza

NRP: 5025211137

## A. Topologi

![image]()

Richter adalah DNS Server

Revolte adalah DHCP Server

Sein dan Stark adalah Web Server

Jumlah Host pada SchwerMountain adalah 64

Jumlah Host pada LaubHills adalah 255

Jumlah Host pada TurkRegion adalah 1022

Jumlah Host pada GrobeForest adalah 512

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

## Perhitungan VLSM

### Subnet

![image]()

### VLSM Tree

![image]()

## Routing

### Tabel routing

![image]()

### Konfigurasi Routing

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

## Testing

- Router ke router

![image]()

- Router ke server

![image]()

- Router ke client

![image]()

- Server ke server

![image]()

- Server ke client

![image]()

- Client ke client

![image]()

## No 1

> Agar topologi yang kalian buat dapat mengakses keluar, kalian diminta untuk mengkonfigurasi Aura menggunakan iptables, tetapi tidak ingin menggunakan MASQUERADE.

Di Aura, digunakan skrip ini untuk mendapatkan alamat IP dari interface eth0, kemudian mengkonfigurasi iptables untuk NAT. Baris kedua merupakan instruksi untuk melakukan Source Network Address Translation (SNAT) pada paket yang melewati interface keluar (outbound) eth0. SNAT digunakan untuk mengganti alamat IP sumber paket dengan alamat IP yang telah diambil dari interface eth0 tadi.

```
ETH0_IP=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source $ETH0_IP
```

## No 2

> Kalian diminta untuk melakukan drop semua TCP dan UDP kecuali port 8080 pada TCP.

Di LaubHills

```
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
iptables -A INPUT -p udp -j DROP
```

## No 3

> Kepala Suku North Area meminta kalian untuk membatasi DHCP dan DNS Server hanya dapat dilakukan ping oleh maksimal 3 device secara bersamaan, selebihnya akan di drop.

## No 4

> Lakukan pembatasan sehingga koneksi SSH pada Web Server hanya dapat dilakukan oleh masyarakat yang berada pada GrobeForest.

## No 5

> Selain itu, akses menuju WebServer hanya diperbolehkan saat jam kerja yaitu Senin-Jumat pada pukul 08.00-16.00.

## No 6

> Lalu, karena ternyata terdapat beberapa waktu di mana network administrator dari WebServer tidak bisa stand by, sehingga perlu ditambahkan rule bahwa akses pada hari Senin - Kamis pada jam 12.00 - 13.00 dilarang (istirahat maksi cuy) dan akses di hari Jumat pada jam 11.00 - 13.00 juga dilarang (maklum, Jumatan rek).

## No 7

> Karena terdapat 2 WebServer, kalian diminta agar setiap client yang mengakses Sein dengan Port 80 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan dan request dari client yang mengakses Stark dengan port 443 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan.

## No 8

> Karena berbeda koalisi politik, maka subnet dengan masyarakat yang berada pada Revolte dilarang keras mengakses WebServer hingga masa pencoblosan pemilu kepala suku 2024 berakhir. Masa pemilu (hingga pemungutan dan penghitungan suara selesai) kepala suku bersamaan dengan masa pemilu Presiden dan Wakil Presiden Indonesia 2024.


## No 9

> Sadar akan adanya potensial saling serang antar kubu politik, maka WebServer harus dapat secara otomatis memblokir  alamat IP yang melakukan scanning port dalam jumlah banyak (maksimal 20 scan port) di dalam selang waktu 10 menit. (clue: test dengan nmap)

## No 10

> Karena kepala suku ingin tau paket apa saja yang di-drop, maka di setiap node server dan router ditambahkan logging paket yang di-drop dengan standard syslog level.
