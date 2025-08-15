#!/usr/bin/env bash

IP=$1
PORT=4200


ffmpeg \
  -f pulse -i bluez_output.40_58_99_49_5D_85.1.monitor \
  -device /dev/dri/card1 -f kmsgrab -i - \
  -vf 'hwmap=derive_device=vaapi,scale_vaapi=format=nv12' \
  -c:v h264_vaapi  -qp 24 -r 60 \
  -f mpegts "srt://${IP}:${PORT}"
