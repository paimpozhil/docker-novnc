#!/bin/bash
x11vnc -create -forever -ncache 10 -ncache_cr  &
cd /root/noVNC && ./utils/launch.sh --vnc localhost:5900
