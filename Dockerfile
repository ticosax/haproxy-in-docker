FROM alpine:3.2
MAINTAINER "Nicolas Delaby" <nicolas.delaby@lock8.me>

RUN apk add --update haproxy iptables

ADD reload.sh /reload.sh
ADD start.sh /start.sh

VOLUME /etc/haproxy/
VOLUME /var/run/haproxy

EXPOSE 8080

CMD ["/start.sh"]
