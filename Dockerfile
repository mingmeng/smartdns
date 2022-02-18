FROM alpine:3.14

ENV SMARTDNS_VERSION="2021.08.27-1923"

RUN wget https://github.com/pymumu/smartdns/releases/download/Release35/smartdns-aarch64 \
  && mv smartdns-aarch64 /bin/smartdns \
  && chmod +x /bin/smartdns

ADD start.sh /start.sh
ADD config.conf /config.conf

WORKDIR /

VOLUME ["/config"]

EXPOSE 53/tcp 53/udp

CMD ["/start.sh"]
