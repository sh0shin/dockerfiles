FROM ubuntu:18.04

# Packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get dist-upgrade -y

# Cleanup
RUN rm -rf \
  /var/lib/apt/lists/*
RUN apt-get autoremove --purge
RUN apt-get clean
