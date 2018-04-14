FROM alpine:3.7
RUN apk upgrade --no-cache
RUN apk add libressl2.7-libssl \
            libressl2.7-libcrypto \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add tor=0.3.2.10-r1 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
