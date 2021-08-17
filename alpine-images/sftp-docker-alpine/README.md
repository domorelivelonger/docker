# sftp-alpine
This is a fully functional SFTP/SSH server for the cost of only 13.1 MB! The default configuration has a non-privileged user *sftp* with password *DefaultPassSFTP*, root with default password of *RootPassSFTP*, and is exposed on port 22.

These settings can be easily changed via SSH (or the Dockerfile, of course). If you plan on using a container for an extended period of time, or for secure applications, then it is highly recommended that you do so.
For right work of file permission, change uid and gid on Dockerfile. 
Example Usage
===
The following command will use physical port 22, detach the container to run in the background, and name the container *sftp-1*:
```
$ docker run -itd -p 22:22 -v /root/sftp:/root/ --name sftp -e SSH_USER=webxdata -e SSH_PASS=webxdata -e ROOT_PASS=webxdata watersalesman/sftp-alpine
```
