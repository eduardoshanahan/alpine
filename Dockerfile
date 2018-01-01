FROM alpine:3.7

LABEL maintainer "Eduardo Shanahan <contact@eduardoshanahan.com>"

RUN apk update \
    && apk upgrade

ENTRYPOINT ["/bin/sh"]
