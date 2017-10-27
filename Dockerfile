FROM alpine:3.6
RUN apk add busybox=1.27.2-r3 \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add tor=0.3.1.8-r0 \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
