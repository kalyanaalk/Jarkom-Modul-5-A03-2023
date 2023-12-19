echo nameserver 192.168.122.1 > /etc/resolv.conf

apt-get update -y
apt-get install netcat -y

iptables -A INPUT -p tcp --dport 22 -m time --timestart 12:00 --timestop 13:00 --weekdays Mon,Tue,Wed,Thu -j DROP
iptables -A INPUT -p tcp --dport 22 -m time --timestart 11:00 --timestop 13:00 --weekdays Fri -j DROP
iptables -A INPUT -p tcp --dport 22 -s 192.170.4.0/22 -m time --timestart 08:00 --timestop 16:00 --weekdays Mon,Tue,Wed,Thu,Fri -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
iptables -A INPUT -p tcp --dport 80 -m time --datestart "2024-02-14T00:00" --datestop "2024-06-27T00:00" -s 192.170.0.20/30 -j DROP