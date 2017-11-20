# Docker image with  Alpine

A basic Docker image based in Alpine. I am using this as a root for my other images.

## Running an interactive session

```bash
docker build . --t eduardoshanahan/alpine:latest
docker run -it --rm eduardoshanahan/alpine
```

Or with Docker Compose

```bash
docker-compose run --rm shell
```



