adduser -S -H ${PROXY_USER} \
    && echo "${PROXY_USER}:${PROXY_PASSWORD}" | chpasswd

sockd -f /etc/sockd.conf
