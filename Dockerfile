FROM alpine:3.7
RUN apk add busybox=1.27.2-r3 \
    libressl2.6-libssl=2.6.3-r0 \
    libressl2.6-libcrypto=2.6.3-r0 \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add tor=0.3.1.8-r1 \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
