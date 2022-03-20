FROM alpine:latest

WORKDIR /smartdns/
COPY ["config.conf", "gfw.conf", "blacklist-ip.conf","start.sh", "/smartdns/"]

RUN wget https://github.com/pymumu/smartdns/releases/download/Release35/smartdns-aarch64 \
  && mv smartdns-aarch64 /bin/smartdns \
  && chmod +x /bin/smartdns

# RUN wget https://github.com/pymumu/smartdns/releases/download/Release35/smartdns.1.2021.08.27-1923.x86_64-linux-all.tar.gz \
#   && tar zxvf smartdns.*.tar.gz \
#   && mv smartdns/usr/sbin/smartdns /bin/smartdns \
#   && chmod +x /bin/smartdns \
#   && rm -rf smartdns*

EXPOSE 53/tcp 53/udp

CMD ["/smartdns/start.sh"]
