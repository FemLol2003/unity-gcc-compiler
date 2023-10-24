FROM debian:stable-slim

RUN apt-get update

RUN apt-get install gcc-multilib -y
RUN apt-get install gcc-mingw-w64-i686 -y
RUN apt-get install gcc-mingw-w64-x86-64 -y
RUN apt-get install gcc-arm-linux-gnueabi -y
RUN apt-get install gcc-12-aarch64-linux-gnu -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
