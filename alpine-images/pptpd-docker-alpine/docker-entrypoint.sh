cat <<EOF > /etc/ppp/chap-secrets
${user} pptpd ${password} *
EOF

set -ex && \
#    iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE  & \
#    iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE && \
#    iptables -t nat -A POSTROUTING -o ens3 -j MASQUERADE && \
#    if [[ "$LOCALDNS" -eq "1" ]]; then \
#        echo 'ms-dns 127.0.0.1' >> /etc/ppp/pptpd-options && \
#        echo 'nameserver 127.0.0.1' > /etc/resolv.conf ; \
#    else \
#        echo -e 'ms-dns 8.8.8.8\nms-dns 223.5.5.5' >> /etc/ppp/pptpd-options && \
#        echo -e 'nameserver 8.8.8.8\nameserver 223.5.5.5' > /etc/resolv.conf; \
#    fi && \
    pptpd && \
    syslogd -n -O /dev/stdout
