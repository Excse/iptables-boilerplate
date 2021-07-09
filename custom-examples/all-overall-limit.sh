#!/bin/bash

## Limit the amount of connections on per remote-ip

CONNECTIONS=30

IPTABLES=/usr/sbin/iptables

$IPTABLES -A INPUT -p tcp --syn -m connlimit --connlimit-above $CONNECTIONS -j REJECT
