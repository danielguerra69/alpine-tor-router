#!/bin/sh

if [ -z $d_host ];
then
  d_host="10.5.0.6"
fi

if [ -z $services ];
then
  services="22 8118 3389 5900"
fi

for d_port in $services; do
  echo "Set forward rules for port $d_port"
  iptables -A PREROUTING -t nat -i eth0 -p tcp --dport $d_port -j DNAT --to $d_host:$d_port
  iptables -A FORWARD -p tcp -d $d_host --dport $d_port -j ACCEPT
done

while [ 1 ];
  do
    sleep 3600
  done
