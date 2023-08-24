#!/bin/bash
set -e

source dev-container-features-test-lib

check "gef is present" test -f /opt/gef/gef.py

reportResults