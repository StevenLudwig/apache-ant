FROM ubuntu:24.04

ENV JAVA_VERSION=8
ENV ANT_VERSION=1.10.13

RUN apt-get update && \
    apt-get install -y wget unzip apt-transport-https curl software-properties-common openjdk-8-jdk vim tree git ant && \
    apt-get clean

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

COPY . /home/ubuntu/app
WORKDIR /home/ubuntu/app
