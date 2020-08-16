FROM alpine:3

LABEL maintainer="Gabriel Galli (ggabriel96@hotmail.com)"

RUN apk update \
  && apk add --no-cache clang=10.0.0-r2 \
  && rm /var/cache/apk/ -rf

ENTRYPOINT [ "clang-format" ]
