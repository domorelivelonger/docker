FROM alpine:latest as builder

ARG VERSION=0.8.13

RUN apk add --update alpine-sdk wget bash && \
    cd / && \
    wget -q  https://github.com/z3APA3A/3proxy/archive/${VERSION}.tar.gz && \
    tar -xf ${VERSION}.tar.gz && \
    cd 3proxy-${VERSION} && \
    make -f Makefile.Linux

FROM alpine:latest

ARG VERSION=0.8.13
ARG SOCKS=1080
ARG HTTP=3128
ARG ADMIN=8080

RUN mkdir /etc/3proxy/

COPY --from=builder /3proxy-${VERSION}/src/3proxy /etc/3proxy/
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk update && \
    apk upgrade && \
    apk add bash && \
    mkdir -p /etc/3proxy/cfg/traf &&\
    chmod +x /docker-entrypoint.sh && \
    chmod -R +x /etc/3proxy/3proxy

ENTRYPOINT ["/docker-entrypoint.sh"]

VOLUME ["/etc/3proxy/cfg/"]

EXPOSE ${HTTP}/tcp ${SOCKS}/tcp ${ADMIN}/tcp

CMD ["start_proxy"]
