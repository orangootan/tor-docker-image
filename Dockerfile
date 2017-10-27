FROM alpine:3.6
RUN apk add busybox=1.27.1-r0 \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add tor=0.3.1.7-r0 \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
