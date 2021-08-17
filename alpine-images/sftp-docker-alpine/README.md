# SFTP
SFTP SERVER
## Example usage
```
docker run -itd --name sftp -e SSH_USER=webxdata -e SSH_PASS=webxdata -p 2222:22 -v /root/sftp:/home/webxdata domorelivelonger/sftp-docker-alpine```
