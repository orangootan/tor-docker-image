FROM alpine:3.13.1
RUN apk upgrade --no-cache
RUN apk add tor=0.4.4.7-r0 \
    --repository http://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
