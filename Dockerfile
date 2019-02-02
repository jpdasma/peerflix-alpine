FROM alpine:3.9

RUN apk --no-cache add npm \
    && npm install -G peerflix
WORKDIR /node_modules/

EXPOSE 8888

ENTRYPOINT ["node", "peerflix/app.js"]
