#!/bin/sh
# Flush all rules
iptables -F
iptables -X

# Apply Default Policy

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

# Allow traffic on loopback
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

# Allow ssh in/out
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT

## Allow Ping in/out (check if the device is alive) (Remove comment if you want to allow ping!)
#iptables -A INPUT -p icmp -j ACCEPT
#iptables -A OUTPUT -p icmp -j ACCEPT

# drop everything else
iptables -A INPUT -j DROP
iptables -A OUTPUT -j DROP


echo "Saving.."
sleep 2
# save

iptables-save

echo "Firewall configuration successfully applied. If you would like to undo this config, edit the script and replace -A with -D."
sleep 1
echo "ONLY SSH ON PORT 22 ALLOWED!"
sleep 1
echo "BYE :)"
