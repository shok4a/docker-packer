FROM alpine:latest

ENV PACKER_VERSION 0.10.1
RUN apk --update add curl unzip && rm -rf /var/cache/apk/*
RUN curl -O https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
  unzip -d /usr/local/bin packer_${PACKER_VERSION}_linux_amd64.zip && \
  rm packer_${PACKER_VERSION}_linux_amd64.zip
