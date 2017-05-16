FROM ubuntu:xenial

MAINTAINER godleon@gmail.com

RUN \
    apt-get update && \
    apt-get install -y python2.7 python-pip && \
    pip install --upgrade pip && \
    apt-get install -y curl git-core python-dev libffi-dev libssl-dev
RUN git clone https://github.com/openstack/tempest.git

WORKDIR /tempest
RUN git checkout 15.0.0

WORKDIR /
RUN pip install tempest/
