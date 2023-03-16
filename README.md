# alpine generic docker image

The idea of this repo is to allow automatic generation of docker images based on alpine linux.
The images are generated using a dockerfile and a set of scripts that are executed during the build process.

## How to use

```sh
docker build -t <username>/<package-name>:<package-version> \
  --build-arg PKG_NAME=<package-name> \
  --build-arg PKG_VERSION=<package-version> \
  --build-arg PKG_USER=<package-name> \
  --build-arg ALPINE_VERSION=<base-alpine-version> \
  .
```
