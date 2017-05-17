FROM ubuntu:xenial

MAINTAINER godleon@gmail.com

RUN apt-get update && apt-get install -y \
    python2.7 \
    python-pip \
    curl \
    git-core \
    python-dev \
    libffi-dev \
    libssl-dev && \
    pip install --upgrade pip


RUN git clone https://github.com/openstack/tempest.git

WORKDIR /
RUN pip install tempest/


CMD ["echo", "tempest:16.0.0"]