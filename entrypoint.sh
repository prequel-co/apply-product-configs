#!/bin/bash

set -e


mkdir -p /usr/local/bin
if [ "$1" == "true" ]; then
    wget --quiet -O /tmp/install.sh https://storage.googleapis.com/prequel_binaries/install.sh
else
    wget --quiet -O /tmp/install.sh https://storage.googleapis.com/prequel_cli_binaries/install.sh
fi

chmod +x /tmp/install.sh
/tmp/install.sh

prequel --host="$2" --api_key="$3" --mode="$4" product apply "$5"