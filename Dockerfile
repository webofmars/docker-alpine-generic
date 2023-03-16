ARG ALPINE_VERSION="3.17.2"

FROM alpine:${ALPINE_VERSION}

ARG PKG_NAME="mysql-client"
ARG PKG_VERSION="10.6.12-r0"
ARG PKG_USER="mysql"

LABEL maintainer="Frederic Leger <frederic@webofmars.com>"
LABEL owner="webofmars"
LABEL version="${PKG_VERSION}"

ENV PKG_NAME="${PKG_NAME}" PKG_VERSION="${PKG_VERSION}"

RUN apk add --no-cache ${PKG_NAME}=${PKG_VERSION} && \
    adduser -D -u 1000 -s /bin/sh ${PKG_USER}

USER ${PKG_USER}

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ash"]
