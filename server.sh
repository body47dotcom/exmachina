ROUTER
cat /proc/sys/net/ipv4/ip_forward  заменить на 0 на 1

В /etc/sysctl.conf добавить две строчки
net.ipv4.conf.default.forwarding=1
net.ipv4.conf.all.forwarding=1

apt insall iptables
Переместить файл nat в /etc/network/if-pre-up.d/
chmod +x /etc/network/if-pre-up.d/nat

SERVER
apt-get install -y apache2 php-common libapache2-mod-php php-cli
wget https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb
apt install ./mysql-apt-config_0.8.22-1_all.deb
apt update
apt install mysql-server

mysql –u root –p
CREATE USER 'new_user' IDENTIFIED BY 'password';

SELECT user FROM mysql.user;
