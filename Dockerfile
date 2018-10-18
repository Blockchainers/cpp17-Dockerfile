FROM debian:sid
LABEL maintainer="Nathan Dane <nathan@peera.co.uk>"
LABEL description="Docker base image for C++17 builds"

USER root

RUN apt-get update && \
apt-get -y install apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common && \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   buster \
   stable" && \
apt-get update && \
apt-get -y install docker-ce

RUN apt-get install -y git ssh gcc g++ cmake