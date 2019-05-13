FROM alpine:latest

LABEL Jan Ritter <git@janrtr.de>

ENV VERSION 0.55.5
RUN apk add --no-cache git openssh openssl py-pygments curl \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/bin/hugo \
    && apk del curl
