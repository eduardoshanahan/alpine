FROM alpine:3.6

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk update

ENTRYPOINT ["/bin/sh"]
