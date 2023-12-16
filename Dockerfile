FROM --platform=arm32v7 debian:bullseye-slim

RUN apt-get update
RUN apt-get install -y wget tar build-essential
RUN wget https://github.com/Kitware/CMake/releases/download/v3.28.1/cmake-3.28.1.tar.gz
RUN tar -zxvf cmake-3.28.1.tar.gz
WORKDIR cmake-3.28.1
RUN ./bootstrap
