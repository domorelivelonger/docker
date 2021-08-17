
#FROM alpine
FROM alpine:latest


#RUN echo -e "http://nl.alpinelinux.org/alpine/v3.5/main\nhttp://nl.alpinelinux.org/alpine/v3.5/community" > /etc/apk/repositories
#RUN echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
#RUN echo 'https://dl-3.alpinelinux.org/alpine/v3.4/main' > /etc/apk/repositories  && \
#    echo '@testing https://dl-3.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
#    echo '@community https://dl-3.alpinelinux.org/alpine/v3.4/community'
#RUN apk update && apk add --no-cache dante-server
RUN apk add dante-server --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

RUN apk update && apk add dante-server

ENV PROXY_USER='user'
ENV PROXY_PASSWORD="password"

ADD sockd.conf /etc/sockd.conf
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 1080
CMD ["sh", "/docker-entrypoint.sh"]
