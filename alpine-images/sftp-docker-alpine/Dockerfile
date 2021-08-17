FROM alpine:latest
MAINTAINER WebXdata Group <support@webxdata.com>

ENV SSH_USER=webxdata
ENV SSH_PASS=webxdata
ENV ROOT_PASS=webxdata

RUN apk add --no-cache bash openssh shadow openssh-server-pam nano screen
ADD screenrc /etc/screenrc
ADD sshd_config /etc/ssh/sshd_config
COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 22

CMD ["sh", "/docker-entrypoint.sh"]
