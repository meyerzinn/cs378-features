#!/bin/sh
set -e

export DEBIAN_FRONTEND=noninteractive

# install dependencies
apt-get update -y
apt-get install -y autoconf automake autotools-dev curl python3 python3-pip libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build git cmake libglib2.0-dev

# note: this takes a lot of space
git clone https://github.com/riscv-collab/riscv-gnu-toolchain.git riscv-gnu-toolchain

cd riscv-gnu-toolchain

./configure --prefix=/opt/riscv --enable-multilib

make -j$(nproc) linux

make -j$(nproc) build-sim SIM=qemu