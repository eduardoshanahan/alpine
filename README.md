# Docker image with  Alpine

A basic Docker image based in Alpine. I am using this as a root for my other images instead of hanging directly from the official Alpine.

## Running an interactive session

```bash
docker build . -t eduardoshanahan/alpine:latest
docker run -it --rm eduardoshanahan/alpine
```

Or with Docker Compose

```bash
docker-compose run --rm shell
```

## Development

To send the commits to the remote server, you can use the script
```bash
./save.sh
```
which will also create a new tag if the version is updated.
