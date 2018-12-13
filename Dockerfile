FROM alpine:3.8
RUN apk upgrade \
    --repository http://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add tor=0.3.4.9-r1 \
    --repository http://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
