FROM debian:sid
LABEL maintainer="Nathan Dane <nathan@peera.co.uk>"
LABEL description="Docker base image for C++17 builds"

USER root
RUN apt-get update && apt-get install -y git ssh gcc g++ cmake docker