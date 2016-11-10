#!/bin/bash

# This script will be called to parallelize final download using aria2
# 4th arg passed in is the final download link

MAX_CONNECTIONS=4

aria2c --continue --max-connection-per-server=${MAX_CONNECTIONS} $4
