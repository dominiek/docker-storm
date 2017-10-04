FROM ubuntu:14.04

MAINTAINER Matthew Farrellee <matt@cs.wisc.edu>

RUN apt-get update && apt-get install -y default-jre tar curl python

RUN curl -s http://archive.apache.org/dist/storm/apache-storm-1.1.1/apache-storm-1.1.1.tar.gz | \
      tar zxf - -C /opt && \
      mv /opt/apache-storm-1.1.1 /opt/apache-storm

ADD configure.sh /
