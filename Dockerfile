FROM docker.io/alpine:latest
RUN apk add --no-cache openssh-keygen
COPY --chmod=755 scripts /usr/local/bin/
VOLUME /certs