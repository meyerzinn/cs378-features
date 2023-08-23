#!/bin/sh
set -e

# install dependencies
apt -y update
apt -y install autoconf automake autotools-dev curl python3 python3-pip libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build git cmake libglib2.0-dev

cd $(mktemp -d)

# note: this takes a lot of space
git clone https://github.com/riscv/riscv-gnu-toolchain

cd riscv-gnu-toolchain

./configure --prefix=/opt/riscv --with-arch=rv32gc --with-abi=ilp32d

make -j$(nproc) linux build-sim SIM=qemu

rm -r $(pwd)