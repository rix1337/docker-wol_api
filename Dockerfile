FROM ghcr.io/linuxserver/baseimage-alpine:3.15
MAINTAINER rix1337

# build tools
RUN apk add --no-cache python3-dev py3-pip

# add local files
COPY root/ /

# Install WakeOnLAN-API
RUN pip3 install wol_api --no-cache-dir
