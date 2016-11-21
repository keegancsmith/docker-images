FROM alpine:3.2
MAINTAINER Keegan Carruthers-Smith <keegan.csmith@gmail.com>

RUN apk add -U php && rm -rf /var/cache/apk/*

ADD http://pgfoundry.org/frs/download.php/2575/pgfouine-1.2.tar.gz /

RUN gunzip /pgfouine-1.2.tar.gz && tar xf /pgfouine-1.2.tar && rm /pgfouine-1.2.tar && mv /pgfouine-1.2 /pgfouine

ENTRYPOINT ["/pgfouine/pgfouine.php"]
