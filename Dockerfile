FROM alpine:3.8

RUN apk --no-cache add npm \
    && npm install -G peerflix \
    && adduser -s sh -D peerflix

EXPOSE 8888

USER peerflix

ENTRYPOINT ["/node_modules/.bin/peerflix"]
