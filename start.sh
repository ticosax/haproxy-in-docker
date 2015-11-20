#!/bin/sh

haproxy -f /etc/haproxy/haproxy.cfg -p /run/haproxy.pid && tail -f /dev/null
