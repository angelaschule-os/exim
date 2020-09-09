FROM alpine

LABEL maintainer="bjoern.schilberg@angelaschule-osnabrueck.net"
LABEL version="1.0"

RUN apk upgrade -U && \
    apk add exim && \\
    apk add mailutils --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing

ADD update-exim4.conf.conf /etc/exim4/

EXPOSE 25
CMD ["exim", "-bd", "-v"]
