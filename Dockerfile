FROM alpine
RUN apk add --no-cache curl openssh-keygen
COPY --chmod=755 scripts /usr/local/bin/
ENTRYPOINT "/bin/sh /usr/local/bin/gendir.sh" && /bin/sh