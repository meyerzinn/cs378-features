#!/bin/bash
set -e

source dev-container-features-test-lib

check "riscv toolchain is present" test -f /opt/riscv

reportResults