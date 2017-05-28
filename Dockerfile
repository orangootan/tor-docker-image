FROM alpine:3.6
RUN apk add tor=0.3.0.6-r0 \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --no-cache
VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
