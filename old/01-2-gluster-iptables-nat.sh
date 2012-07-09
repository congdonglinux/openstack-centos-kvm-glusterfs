#!/bin/sh

iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE 
iptables -A FORWARD -i eth1 -j ACCEPT 
iptables -A FORWARD -o eth1 -j ACCEPT 

service iptables save
service iptables restart