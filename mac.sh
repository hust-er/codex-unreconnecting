#!/bin/bash

set -e

PROXY_URL="${PROXY_URL:-http://127.0.0.1:7897}"

export HTTP_PROXY="$PROXY_URL"
export HTTPS_PROXY="$PROXY_URL"
export ALL_PROXY="$PROXY_URL"
export WS_PROXY="$PROXY_URL"
export WSS_PROXY="$PROXY_URL"

# Close VS Code if it is running. Ignore errors when the process is absent.
pkill -x "Code" >/dev/null 2>&1 || true

# Give macOS a moment to fully release the app process before reopening.
sleep 1

open -a "Visual Studio Code"
