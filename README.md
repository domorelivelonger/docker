### Docker and Docker-compose installation
```

sudo curl -L "https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose &&
docker-compose --version
&&
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

Run docker and docker-compose from non-root user.
```
usermod -aG docker developer                  # to add myself to docker group
chgrp docker /usr/local/bin/docker-compose     # to give docker-compose to docker group,
chmod 750 /usr/local/bin/docker-compose   # to allow docker group users to execute it
```
