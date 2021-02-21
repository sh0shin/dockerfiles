FROM ubuntu:18.04
LABEL maintainer="Chris 'sh0shin' Frage"

# Packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y --no-install-recommends apt-utils sudo

# Cleanup
RUN rm -rf \
  /var/lib/apt/lists/*
RUN apt-get autoremove --purge
RUN apt-get clean
