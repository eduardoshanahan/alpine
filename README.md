# Docker image with  Alpine

A basic Docker image based in Alpine. I am using this as a root for my other images instead of hanging directly from the official Alpine.

## Building

```
docker build . -t eduardoshanahan/alpine:latest
```

## Running an interactive test

```
docker run --rm -it eduardoshanahan/alpine:latest
```

Or with Docker Compose

```
docker-compose run --rm shell
```
## Building an image in Docker Hub

If for any reason the tagged build fails, you can fire a fresh one running

```
./build_image.sh
```

## Development

To send the commits to the remote server, you can use the script

```
./save.sh
```

which will also create a new tag if the version is updated.

