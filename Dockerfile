FROM ubuntu:latest

WORKDIR /app

RUN apt update
RUN apt install sudo
RUN sudo apt install tree
RUN sudo apt install -y gcc-arm-none-eabi qemu-system-arm vim bsdmainutils

COPY . .

EXPOSE 9999