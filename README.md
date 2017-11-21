# Docker image with  Alpine

A basic Docker image based in Alpine. I am using this as a root for my other images instead of hanging directly from the official Alpine.

## Running an interactive session

```
docker build . -t eduardoshanahan/alpine:latest
docker run -it --rm eduardoshanahan/alpine
```

Or with Docker Compose

```
docker-compose run --rm shell
```



