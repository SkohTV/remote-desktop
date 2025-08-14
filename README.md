# remote-desktop
Desktop-in-cloud setup, using AWS &amp; other automations  


How it all started...
```bash
ffmpeg \
  -f pulse -i bluez_output.40_58_99_49_5D_85.1.monitor \
  -device /dev/dri/card1 -f kmsgrab -i - \
  -vf 'hwmap=derive_device=vaapi,scale_vaapi=format=nv12' \
  -c:v h264_vaapi -qp 24 -r 60 \
  -f mpegts 'srt://<REMOTE_IP>:<REMOTE_PORT>'
```
