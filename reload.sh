#!/bin/sh
set -e

iptables -I INPUT -p tcp --dport 8080 --syn -j DROP
sleep 0.2
haproxy -f /etc/haproxy/haproxy.cfg -p /run/haproxy.pid -sf $(cat /run/haproxy.pid)
iptables -D INPUT -p tcp --dport 8080 --syn -j DROP
