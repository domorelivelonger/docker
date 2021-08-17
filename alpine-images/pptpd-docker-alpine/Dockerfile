FROM alpine:latest
env user='pptpduser'
env password='yourpass'

LABEL maintainer="support@webxdata.com"
#RUN echo -e "http://nl.alpinelinux.org/alpine/v3.5/main\nhttp://nl.alpinelinux.org/alpine/v3.5/community" > /etc/apk/repositories
RUN apk --update --no-cache add pptpd ppp iptables iproute2 && \
    rm -rf /var/cache/apk/* && \
    echo 'option /etc/ppp/pptpd-options' > /etc/pptpd.conf && \
    echo 'pidfile /var/run/pptpd.pid' >> /etc/pptpd.conf && \
    echo 'localip 192.168.1.1' >> /etc/pptpd.conf && \
    echo 'remoteip 192.168.1.100-199' >> /etc/pptpd.conf && \
    echo 'ms-dns 8.8.8.8\nms-dns 8.8.4.4' >> /etc/ppp/pptpd-options && \
    echo 'nameserver 8.8.8.8\nameserver 8.8.4.4' > /etc/resolv.conf  && \
    echo 'name pptpd' > /etc/ppp/pptpd-options && \
    echo 'refuse-pap' >> /etc/ppp/pptpd-options && \
    echo 'refuse-chap' >> /etc/ppp/pptpd-options && \
    echo 'refuse-mschap' >> /etc/ppp/pptpd-options && \
    echo 'require-mschap-v2' >> /etc/ppp/pptpd-options && \
    echo 'require-mppe-128' >> /etc/ppp/pptpd-options && \
    echo 'proxyarp' >> /etc/ppp/pptpd-options && \
    echo 'nodefaultroute' >> /etc/ppp/pptpd-options && \
    echo 'lock' >> /etc/ppp/pptpd-options && \
    echo 'nobsdcomp' >> /etc/ppp/pptpd-options && \
    echo 'novj' >> /etc/ppp/pptpd-options && \
    echo 'novjccomp' >> /etc/ppp/pptpd-options && \
    echo 'nologfd' >> /etc/ppp/pptpd-options


COPY ./docker-entrypoint.sh /docker-entrypoint.sh
#    echo 'route 192.168.0.0 255.255.255.0 192.168.1.7' >> /etc/ppp/pptpd-options
EXPOSE 1723/tcp
 
CMD ["sh", "/docker-entrypoint.sh"]
