FROM ubuntu:14.04.3

ENV DEBIAN_FRONTEND noninteractive
ENV PACKER_VERSION 0.8.6
RUN apt-get update && \
  apt-get install -y wget unzip && \
  apt-get clean && \
  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* && \
  wget -nv -O packer.zip https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
  unzip -d /usr/local/bin packer.zip && \
  rm packer.zip
