FROM alpine:3.6

LABEL maintainer "Eduardo Shanahan <contact@eduardoshanahan.com>"

RUN apk update

ENTRYPOINT ["/bin/sh"]
