# Scripts

## `srt-senter.sh`
Send audio (output, not mic, via `pactl`) and video (`wayland`) over SRT to another (listening) device

### Example
```bash
./srt-sender.sh --ip [TARGET_IP]
```
You can override the default port (`4200`) with `--port [PORT_NUMBER]`  
You can override the default audio device (`pactl list sinks ...`) with `--pl_device [YOUR_DEVICE]`  
You can override the default video card (`ls /dev/dri/card*`) with `--wl_device [YOUR_DEVICE]`


### kmsgrab
To grab the wayland display, kmsgrab is used

If you get the error `No handle set on framebuffer: maybe you need some additional capabilities?`  
You need to run `sudo setcap cap_sys_admin+ep /usr/bin/ffmpeg` ([ref](https://unix.stackexchange.com/questions/798313/can-ffmpeg-record-screen-on-wayland/798319#798319))  

If you're on a steamdeck, you'll need to disable the readonly filesystem 
```bash
sudo steamos-readonly disable
sudo setcap cap_sys_admin+ep /usr/bin/ffmpeg
sudo steamos-readonly enable 
```

### Steamdeck
If you need to [enable SSH on your steamdeck](https://pimylifeup.com/steam-deck-ssh/)  
You also don't need to go into desktop to check your ip every time, you can [go settings > internet and click on on the internet you're connected to](https://www.reddit.com/r/SteamDeck/comments/180482r/comment/li7u8z1/)


## `steamdeck-videos.ssh`
Convert and download videos made with Steam recording to your machine (via `scp` and `ffmpeg`)

### Example
```bash
./steamdeck-videos.sh ls [STEAMDECK_IP]

./steamdeck-videos.sh dl [STEAMDECK_IP] [CLIP_ID]
```
