FROM alpine:3.8
RUN apk upgrade --no-cache
RUN apk add tor=0.3.4.8-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
