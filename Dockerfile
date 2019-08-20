#FROM ubuntu:xenial
FROM debian:stable

RUN apt-get update && apt-get install -y \
    debootstrap \
    squashfs-tools \
    xorriso \
    grub-pc-bin \
    grub-efi-amd64-bin \
    mtools \
 && rm -rf /var/lib/apt/lists/*

ADD https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64 /builder/

COPY . /builder
