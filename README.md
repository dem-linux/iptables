Simple Script created to execute for locking down a server or service. 

```
git clone https://github.com/dem-linux/iptables.git
```


Make the Script executable 

```
chmod +x only_allow_ssh.sh
chmod +x anti-ddos.sh
```

Execute the Script:
```
./only_allow_ssh
./anti-ddos.sh
```

For the Anti-DDOS please change some of the lines to your prefered IP range!
```
Example:
iptables -A SAFEZONE -s x.x.x.x/32 -m comment --comment "allow-ingress-from-xxx-secure-IP" -j ACCEPT
iptables -A SAFEZONE -s x.x.x.x/32 -m comment --comment "allow-ingress-from-xxx-secure-IP" -j ACCEPT
````
