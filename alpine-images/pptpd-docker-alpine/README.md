# pptpd-docker-alpine
Minimal docker Alpine image with PPTPD VPN.
## Example usage
```
sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf
sysctl -p
# change iptables rule for your inetrnet interface, eth0 - default, can be ens3, ens18, ens19 on Centos.
iptables -t nat -I POSTROUTING -o eth0 -j MASQUERADE
docker run -itd --name pptpd --network host --env user="webxdata" --env password="webxdata" --restart unless-stopped --privileged domorelivelonger/pptpd-docker-alpine
```

License
----

BSD
### Docker and Docker-compose installation
```

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
