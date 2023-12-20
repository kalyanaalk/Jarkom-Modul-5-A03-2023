# Jarkom-Modul-5-A03-2023

Kelompok: A03

Nama: Kalyana Putri Al Kanza

NRP: 5025211137

## A. Topologi

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186732443798097960/image.png?ex=659451b7&is=6581dcb7&hm=efe4ca6c7384aa0536c7328443b572b299549ae742e96298efbf4a897752412b&)

Richter adalah DNS Server

Revolte adalah DHCP Server

Sein dan Stark adalah Web Server

Jumlah Host pada SchwerMountain adalah 64

Jumlah Host pada LaubHills adalah 255

Jumlah Host pada TurkRegion adalah 1022

Jumlah Host pada GrobeForest adalah 512

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

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186733197288034434/image.png?ex=6594526a&is=6581dd6a&hm=92f24adb5e308d8f8888ebb76675d5b126484d0113d240b01e32abee854d6680&)

### VLSM Tree

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186732685037674497/image.png?ex=659451f0&is=6581dcf0&hm=81a7fd2d33bdc701b6f2cbb96c4eb6a4610b31fafa52446f636b5463084dd86a&)

## Routing

### Tabel routing

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186733018749096046/image.png?ex=65945240&is=6581dd40&hm=1768fe6cdb3b11451b0bbdd5fccda60ad55b67c1b86ddb60fd3a4321876d7399&)

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

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186733809979367535/image.png?ex=659452fc&is=6581ddfc&hm=d2a2d1988059734b12301dd9b4fc072318f8b9903cceb5926426f85d7c0b485a&)

- Router ke server

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186734377112178779/image.png?ex=65945383&is=6581de83&hm=8e3cea935baf4e76bad9e241293195b0bdf0a2df18efae6dd4c67d0f0b86ffb4&)

- Router ke client

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186734995180638310/image.png?ex=65945417&is=6581df17&hm=6a7e691b1160463bfb614565a7f957ac1fe76a3c535d3b66d944141480205a27&)

- Server ke server

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186735361251098765/image.png?ex=6594546e&is=6581df6e&hm=14fd0edf86311570bdbe9bb13498ba27125dc8f3c900c13f25686b68a73ce523&)

- Server ke client

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186735604168405094/image.png?ex=659454a8&is=6581dfa8&hm=f4615d43954ca79ec0f700278703b29e00fb2891c24a3e3f2de18bb2e8e11c19&)

- Client ke client

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186735921824018542/image.png?ex=659454f4&is=6581dff4&hm=23ab5ef7336a2e677cf25d6cf02b0798b29b296222fa186e7cfe5761f812db31&)

## No 1

> Agar topologi yang kalian buat dapat mengakses keluar, kalian diminta untuk mengkonfigurasi Aura menggunakan iptables, tetapi tidak ingin menggunakan MASQUERADE.

```
ETH0_IP=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to-source $ETH0_IP
```

Di Aura, digunakan skrip ini untuk mendapatkan alamat IP dari interface eth0, kemudian mengkonfigurasi iptables untuk NAT. Baris kedua merupakan instruksi untuk melakukan Source Network Address Translation (SNAT) pada paket yang melewati interface keluar (outbound) eth0. SNAT digunakan untuk mengganti alamat IP sumber paket dengan alamat IP yang telah diambil dari interface eth0 tadi.

Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186992317580709989/image.png?ex=659543bd&is=6582cebd&hm=fdda479865cea9b5c3029be1f89a1bad3c373ce144f226f94938d6fa1f7d8465&)

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186992542387028018/image.png?ex=659543f3&is=6582cef3&hm=37e2dd1ea2d903b9b4903eb9704bead68eb38e96df03a8788c99f979b802b4a9&)

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186994285632045076/image.png?ex=65954592&is=6582d092&hm=739ad7970cf0ca6c29c01ca83cf4a1dda17f89ebb8298da0c86f743f123aaa23&)

## No 2

> Kalian diminta untuk melakukan drop semua TCP dan UDP kecuali port 8080 pada TCP.

```
iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp -j DROP
iptables -A INPUT -p udp -j DROP
```

Baris atau aturan pertama mengizinkan koneksi yang masuk (INPUT) melalui protokol TCP ke port 8080. Artinya, jika ada koneksi yang datang ke sistem melalui TCP dan menuju port 8080, koneksi tersebut akan diizinkan.

Baris atau aturan kedua menolak (DROP) semua koneksi TCP yang mencoba masuk ke sistem. Dengan kata lain, semua koneksi TCP, kecuali yang ditujukan ke port 8080 (seperti yang diizinkan pada aturan pertama), akan ditolak.

Baris atau aturan ketiga ini menolak (DROP) semua koneksi UDP yang mencoba masuk ke sistem. Artinya, semua koneksi UDP yang mencoba masuk ke sistem akan ditolak.

Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186997041482698772/image.png?ex=65954824&is=6582d324&hm=1711e528aa6856c825d031e359d2da5d5cbd0e277d40fbc6098790eb087c6b60&)

## No 3

> Kepala Suku North Area meminta kalian untuk membatasi DHCP dan DNS Server hanya dapat dilakukan ping oleh maksimal 3 device secara bersamaan, selebihnya akan di drop.

Gunakan skrip berikut di DHCP server (Revolte) dan DNS server (Richter).

```
iptables -A INPUT -p icmp -m connlimit --connlimit-above 3 --connlimit-mask 0 -j DROP
```

- iptables: Perintah untuk mengelola aturan firewall menggunakan iptables.

- -A INPUT: Menambahkan aturan ke rantai INPUT, yang mengontrol paket yang masuk ke sistem.

- -p icmp: Menentukan protokol paket, dalam hal ini ICMP (Internet Control Message Protocol), yang sering digunakan untuk pengiriman pesan kontrol dan kesalahan di jaringan.

- -m connlimit: Menggunakan modul connlimit untuk menetapkan batasan koneksi.

- --connlimit-above 3: Menetapkan batas di atas jumlah maksimum koneksi yang diizinkan. Dalam hal ini, jika jumlah koneksi melebihi 3, aturan akan diterapkan.

- --connlimit-mask 0: Menerapkan batasan pada alamat IP sumber yang berbeda-beda. Dalam hal ini, setiap alamat IP dihitung secara terpisah tanpa mempertimbangkan alamat IP mana yang digunakan.

- -j DROP: Menetapkan tindakan yang akan diambil jika batasan jumlah koneksi terlampaui, yaitu menolak (DROP) paket tersebut.

Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186998459501383691/image.png?ex=65954976&is=6582d476&hm=f8531c326de70bb9db017fead7fa2af86ea4f6130f068c8da9c3d65782effcf5&)

## No 4

> Lakukan pembatasan sehingga koneksi SSH pada Web Server hanya dapat dilakukan oleh masyarakat yang berada pada GrobeForest.

```
iptables -A INPUT -p tcp --dport 22 -s 192.170.4.0/22 -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
```

- iptables: Perintah untuk mengelola aturan firewall menggunakan iptables.

- -A INPUT: Menambahkan aturan ke rantai INPUT, yang mengontrol paket yang masuk ke sistem.

- -p tcp: Menentukan protokol paket, dalam hal ini TCP

- --dport 22: Khusus untuk port 22, yang merupakan port standar untuk layanan SSH.

- -s 192.170.4.0/22: Membatasi akses SSH hanya dari alamat IP yang termasuk dalam rentang 192.170.4.0 hingga 192.170.7.255.

- -j ACCEPT: Menetapkan bahwa paket yang memenuhi syarat akan diterima.

- -j DROP: Menunjukkan bahwa paket atau koneksi yang memenuhi syarat pada aturan tersebut akan ditolak (drop). 

Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1186999989038235699/image.png?ex=65954ae2&is=6582d5e2&hm=a0a654c5c9071f333ba7cddb8414989a86b9b6674c6b4c462d89a0c9d5ec2cfe&)

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1187000520162951299/image.png?ex=65954b61&is=6582d661&hm=277e05721136b2f4c2598b8a75b3c2209fe7cf5dc480ad25580b4c23d8aeb6e9&)

## No 5

> Selain itu, akses menuju WebServer hanya diperbolehkan saat jam kerja yaitu Senin-Jumat pada pukul 08.00-16.00.

```
iptables -A INPUT -p tcp --dport 22 -s 192.170.4.0/22 -m time --timestart 08:00 --timestop 16:00 --weekdays Mon, Tue,Wed,Thu,Fri -j ACCEPT
```

- -A INPUT: Menambahkan aturan ke rantai INPUT, yang mengontrol paket yang masuk ke sistem.

- -p tcp: Menentukan protokol paket yang diizinkan, dalam hal ini TCP.

- --dport 22: Menentukan port tujuan, dalam hal ini port 22 yang umumnya digunakan untuk layanan SSH.

- -s 192.170.4.0/22: Mengizinkan koneksi hanya dari alamat IP dalam rentang 192.170.4.0 hingga 192.170.7.255.

- -m time --timestart 08:00 --timestop 16:00 --weekdays Mon,Tue,Wed,Thu,Fri: Menggunakan modul waktu untuk menetapkan batasan waktu. Aturan ini hanya berlaku pada hari Senin hingga Jumat, antara pukul 08:00 dan 16:00.

- -j ACCEPT: Menetapkan tindakan yang akan diambil jika paket memenuhi syarat, yaitu diizinkan (ACCEPT).
Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1187003257684492309/image.png?ex=65954dee&is=6582d8ee&hm=ea7e8b5792863f7495124528e2a95d4b3282702065852b66c59866c441c69453&)

## No 6

> Lalu, karena ternyata terdapat beberapa waktu di mana network administrator dari WebServer tidak bisa stand by, sehingga perlu ditambahkan rule bahwa akses pada hari Senin - Kamis pada jam 12.00 - 13.00 dilarang (istirahat maksi cuy) dan akses di hari Jumat pada jam 11.00 - 13.00 juga dilarang (maklum, Jumatan rek).

```
iptables -A INPUT -p tcp --dport 22 -m time --timestart 12:00 --timestop 13:00 --weekdays Mon,Tue,Wed,Thu -j DROP
iptables -A INPUT -p tcp --dport 22 -m time --timestart 11:00 --timestop 13:00 --weekdays Fri -j DROP
```

#### Pertama: 

- -A INPUT: Menambahkan aturan ke rantai INPUT.

- -p tcp: Menggunakan protokol TCP.

- --dport 22: Berlaku hanya untuk koneksi ke port 22 (SSH).

- -m time --timestart 12:00 --timestop 13:00 --weekdays Mon,Tue,Wed,Thu: Menerapkan batasan waktu, hanya berlaku pada hari Senin hingga Kamis antara pukul 12:00 dan 13:00.

- -j DROP: Menolak (drop) semua koneksi SSH yang memenuhi syarat pada waktu tersebut.

#### Kedua:

- -A INPUT: Menambahkan aturan ke rantai INPUT.

- -p tcp: Menggunakan protokol TCP.

- --dport 22: Berlaku hanya untuk koneksi ke port 22 (SSH).

- -m time --timestart 11:00 --timestop 13:00 --weekdays Fri: Menerapkan batasan waktu, hanya berlaku pada hari Jumat antara pukul 11:00 dan 13:00.

- -j DROP: Menolak (drop) semua koneksi SSH yang memenuhi syarat pada waktu tersebut.

Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1187005376990818344/image.png?ex=65954fe7&is=6582dae7&hm=d2f324532689d60d8cb7de73bc5ccbc7c7bd24b527036a745a27ee63a24ae93d&)

## No 7

> Karena terdapat 2 WebServer, kalian diminta agar setiap client yang mengakses Sein dengan Port 80 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan dan request dari client yang mengakses Stark dengan port 443 akan didistribusikan secara bergantian pada Sein dan Stark secara berurutan.

```
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.170.4.2 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.170.4.2
iptables -A PREROUTING -t nat -p tcp --dport 80 -d 192.170.4.2 -j DNAT --to-destination 192.170.0.10
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.170.0.10 -m statistic --mode nth --every 2 --packet 0 -j DNAT --to-destination 192.170.0.10
iptables -A PREROUTING -t nat -p tcp --dport 443 -d 192.170.0.10 -j DNAT --to-destination 192.170.4.2
```

Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1187045099964731512/image.png?ex=659574e6&is=6582ffe6&hm=0a37264746051728680389a988a26f0d8ee5a2cac519e9a4e57f76ac0c351072&)

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1187044824646438922/image.png?ex=659574a4&is=6582ffa4&hm=df577534fb28aca31c5d4576ad145c6028d72f8d3befc8dd5bec9bc50cbeacba&)

## No 8

> Karena berbeda koalisi politik, maka subnet dengan masyarakat yang berada pada Revolte dilarang keras mengakses WebServer hingga masa pencoblosan pemilu kepala suku 2024 berakhir. Masa pemilu (hingga pemungutan dan penghitungan suara selesai) kepala suku bersamaan dengan masa pemilu Presiden dan Wakil Presiden Indonesia 2024.

```
iptables -A INPUT -p tcp --dport 80 -m time --datestart "2024-02-14T00:00" --datestop "2024-06-26T23:59" -s 192.170.0.20/30 -j DROP
```

Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1187052803865194617/image.png?ex=65957c12&is=65830712&hm=8a278ded9274f1ffc16e1a7ee62f138d9f504f31c540e07038778970cc3e7cc5&)

## No 9

> Sadar akan adanya potensial saling serang antar kubu politik, maka WebServer harus dapat secara otomatis memblokir  alamat IP yang melakukan scanning port dalam jumlah banyak (maksimal 20 scan port) di dalam selang waktu 10 menit. (clue: test dengan nmap)

```
iptables -N PORT_SCAN
iptables -A INPUT -m recent --name PORT_SCAN --update --seconds 600 --hitcount 20 -j DROP
iptables -A FORWARD -m recent --name PORT_SCAN --update --seconds 600 --hitcount 20 -j DROP
iptables -A INPUT -m recent --name PORT_SCAN --set -j ACCEPT
iptables -A FORWARD -m recent --name PORT_SCAN --set -j ACCEPT
```

Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1187059112261984336/image.png?ex=659581f2&is=65830cf2&hm=f1eeb62580f49cd92e2ea7c53011e49cd96e9bc707a691491fe7416013e7e0ea&)

## No 10

> Karena kepala suku ingin tau paket apa saja yang di-drop, maka di setiap node server dan router ditambahkan logging paket yang di-drop dengan standard syslog level.

```
iptables -N LOGGING
iptables -A INPUT -j LOGGING
iptables -A OUTPUT -j LOGGING
iptables -A LOGGING -m limit --limit 2/min -j LOG --log-prefix "IPTables-Dropped: " --log-level 4
iptables -A INPUT -j LOG --log-prefix "Dropped packet: " --log-level 4

echo 'kern.warning	/var/log/iptables.log ' >> /etc/rsyslog.conf
/etc/init.d/rsyslog restart
```

Berikut adalah hasil tes:

![image](https://cdn.discordapp.com/attachments/1186732405697028127/1187059927122968687/image.png?ex=659582b5&is=65830db5&hm=ae7d324e229df59f31a3db04af2e724ada1201f15843ce9e4f61de166c5618f2&)
