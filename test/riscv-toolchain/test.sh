#!/bin/bash
set -e

check "riscv toolchain is present" file /opt/riscv | grep "directory"