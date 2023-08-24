#!/bin/bash
set -e

# Install required dependencies for GEF
export DEBIAN_FRONTEND=noninteractive

apt-get update -y && apt-get install -y git

git clone https://github.com/hugsy/gef.git /opt/gef

# Append GEF configuration to GDB init file
echo "source /opt/gef/gef.py" >> $_REMOTE_USER_HOME/.gdbinit