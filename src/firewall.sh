#!/bin/bash

iptables –F
iptables -X

iptables -A INPUT -p tcp --dport 20 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 20 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 80 -j ACCEPT

iptables -A OUTPUT -p icmp --icmp-type echo-reply -j DROP
iptables -A OUTPUT -p icmp --icmp-type echo-request -j ACCEPT