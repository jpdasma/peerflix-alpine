FROM alpine:3.8 as build-env

RUN apk --no-cache add npm \
    && npm install -G peerflix
WORKDIR /node_modules/


FROM gcr.io/distroless/nodejs

COPY --from=build-env /node_modules /node_modules
WORKDIR /node_modules/.bin
EXPOSE 8888
ENTRYPOINT ["/nodejs/bin/node", "peerflix"]
