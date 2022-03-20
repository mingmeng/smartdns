#!/bin/sh
docker build -f ./Dockerfile -t smartdns .

# 如果使用不同架构的机器进行编译，需要考虑使用 docker buildx 来进行编译
# docker buildx build -f ./Dockerfile --platform=linux/arm64 -t mingmeng/smartdns . --push