#!/bin/bash
# This script will be called to parallelize final download using aria2
# $1 module name (lowercase). For example: mediafire.
# $2 download URL.
# $3 cookie file fulfilled by download module function.
# $4 final URL.
# $5 final filename.


MAX_CONNECTIONS=4

aria2c --continue --max-connection-per-server=${MAX_CONNECTIONS} $4 >/dev/tty
