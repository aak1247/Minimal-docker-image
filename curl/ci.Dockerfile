FROM alpine:3.8

LABEL version="1.0"
LABEL maintainer="aak1247@126.com"

RUN apk add --no-cache curl
RUN apk add --no-cache bash

ENTRYPOINT ["/bin/bash", "-c"]
