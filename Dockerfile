FROM alpine:3.7
RUN apk add tor=0.3.2.10-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
#VOLUME /etc/tor
USER tor
ENTRYPOINT ["tor"]
