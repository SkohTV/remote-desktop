#!/usr/bin/env bash

PORT=4200 # Good default

WL_DEVICE=$(\ls /dev/dri/card*)
PL_DEVICE=$(pactl list sinks | grep -A1 "State: RUNNING" | grep 'Name:' | cut -d':' -f2 | xargs)


while [[ $# -gt 0 ]]; do
  case $1 in
    --ip)
      IP="$2"
      shift ; shift ;;
    --port)
      PORT="$2"
      shift ; shift ;;
    --wl_device)
      WL_DEVICE="$2"
      shift ; shift ;;
    --pl_device)
      PL_DEVICE="$2"
      shift ; shift ;;
    -*)
      echo "Unknown option $1"
      exit 1 ;;
    *)
      echo "Wrong syntax"
      exit 1 ;;
  esac
done



# The big command
# To find 
ffmpeg \
  -f pulse -i "${PL_DEVICE}.monitor" \
  -device "${WL_DEVICE}" -f kmsgrab -i - \
  -vf 'hwmap=derive_device=vaapi,scale_vaapi=format=nv12' \
  -c:v h264_vaapi \
  -qp 24 -r 60 \
  -f mpegts "srt://${IP}:${PORT}"

