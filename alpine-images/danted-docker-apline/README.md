# DNATED
Dockerized DANTE. (SOCKS)

[3proxy](https://www.inet.no/dante/) is tiny proxy server.


|Env| Description | Default |
|:-:|:-:| :-: |

| SOCKS | The port of socks proxy | 1080 |
| PROXY_LOGIN | The username of proxy auth. (required) | N/A |
| PROXY_PASSWORD | The password of proxy auth. (required) | N/A |
| PROXY_VERSION | The version of 3proxy | 0.8.13 |

## Example usage
```sh
$ docker run --name dante -d -p 1081:1080 --env SOCKS="1081" --env PROXY_LOGIN="webxdata" --env PROXY_PASSWORD="webxdata" domorelivelonger/dante-docker-alpine

$ curl --socks5 webxdata:webxdata@localhost:5910 ifconfig.co
```

### Docker and Docker-compose installation
```

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```


```

### Docker and Docker-compose installation
```

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
