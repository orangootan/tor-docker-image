FROM alpine:3.11.5
RUN apk upgrade --no-cache
RUN apk add tor=0.4.2.7-r0 \
    --repository http://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
