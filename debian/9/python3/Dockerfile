FROM sh0shin/debian-9-base:latest
LABEL maintainer="Chris 'sh0shin' Frage"

# Packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
  python3-pip python3-wheel python3-setuptools python3-apt

# Cleanup
RUN rm -rf \
  /var/lib/apt/lists/*
RUN apt-get autoremove --purge
RUN apt-get clean
