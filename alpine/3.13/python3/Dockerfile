FROM sh0shin/alpine-3.13-base

LABEL maintainer="Chris 'sh0shin' Frage"

# Packages
RUN apk update
RUN apk add \
  sudo \
  python3 py3-pip py3-wheel py3-setuptools

# Cleanup
RUN rm -f /var/cache/apk/*
