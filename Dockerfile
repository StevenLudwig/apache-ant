FROM ubuntu:24.04

# RUN groupadd -g 1000 user && useradd -m -u 1000 -g 1000 -s /bin/bash user

ENV JAVA_VERSION=8
ENV ANT_VERSION=1.10.13

RUN apt-get update && \
    apt-get install -y wget unzip apt-transport-https curl software-properties-common openjdk-8-jdk vim tree git ant && \
    apt-get clean

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

COPY . /home/ubuntu/app

# RUN chown -R user:user /home/user/app

WORKDIR /home/ubuntu/app

# USER user