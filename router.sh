#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward

echo "net.ipv4.conf.default.forwarding=1" >> /etc/sysctl.conf

echo "net.ipv4.conf.all.forwarding=1" >> /etc/sysctl.conf

apt install -y iptables

mv nat /etc/network/if-pre-up.d/

chmod +x /etc/network/if-pre-up.d/nat

iptables -A POSTROUTING -t nat -j MASQUERADE
