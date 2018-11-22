FROM ubuntu:16.04
MAINTAINER Hayati İbiş <hayati.ibis@yandex.com>

RUN echo "deb http://downloads.skewed.de/apt/xenial xenial universe" >> /etc/apt/sources.list && \
    echo "deb-src http://downloads.skewed.de/apt/xenial xenial universe" >> /etc/apt/sources.list \
    apt-key adv --keyserver pgp.skewed.de --recv-key 612DEFB798507F25 \
    apt-get update && apt-get install --yes --no-install-recommends --allow-unauthenticated \
    python3-graph-tool python3-pip nano \
    pip3 install --upgrade pip \
    pip3 install pika==0.10.0 pymongo requests==2.17.3 numpy
