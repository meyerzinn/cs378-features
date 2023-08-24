#!/bin/bash
set -e

source dev-container-features-test-lib

check "riscv toolchain is present" file /opt/riscv | grep "directory"

reportResults