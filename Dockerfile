ARG ALPINE_VERSION

FROM alpine:$ALPINE_VERSION
MAINTAINER Tapas Mishra <tapas.mishra@linuxfunda.com>
LABEL maintainer="tapas.mishra@linuxfunda.com"

USER root
WORKDIR /root/download

RUN apk --update add \
    curl \
    openssl \
    unzip \
    wget