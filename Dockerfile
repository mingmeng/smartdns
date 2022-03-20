FROM alpine:latest

WORKDIR /smartdns/

COPY ["config.conf", "gfw.conf", "blacklist-ip.conf","start.sh", "/smartdns/"]

RUN wget https://github.com/pymumu/smartdns/releases/download/Release35/smartdns-aarch64 \
  && mv smartdns-aarch64 /bin/smartdns \
  && chmod +x /bin/smartdns \
  && rm -rf smartdns*

EXPOSE 53

CMD ["/smartdns/start.sh"]
