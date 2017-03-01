FROM alpine:3.5

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk update 

ENTRYPOINT ["/bin/sh"]
