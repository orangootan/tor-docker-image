FROM alpine:3.13.0
RUN apk upgrade --no-cache
RUN apk add tor=0.4.4.6-r1 \
    --repository http://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
