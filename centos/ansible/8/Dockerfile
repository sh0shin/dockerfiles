FROM sh0shin/centos-8-base

# Packages
RUN yum update -y
RUN yum install -y \
  sudo \
  python3 python3-pip python3-wheel python3-setuptools

# Cleanup
RUN yum clean all
