# Steps

## Deploy AWS stack
Upload `windows-server.yml` to [AWS CloudFormation](https://aws.amazon.com/fr/cloudformation/)  
\> Add a name to the stack  
\> Add a KeyPair (to be able to retrieve initial admin password)


## After stack creation
Download RDP file  
Decrypt admin password (using KeyPair)  
Then log into the computer using a RDP Client ([Remmina](https://remmina.org/) for Linux, none required for Windows)  


## After AWS setup
Install web browser using `BraveBrowser.exe` from `Desktop`  
Install `NVIDIA GPU Drivers` from `Desktop` (might take some time to download)  
**Change the Administrator password** *(using Powershell -> `net user Administrator "new_password"`)*

### Parsec
Download Parsec from `https://parsec.app/downloads`  
Install in **Per computer** mode, to be able to startup directly  
Login into Parsec
Restart the instance

#### WARNING
Parsec auto disconnect every 30 days after not being used (?)  
TODO: Solve and verify


## After restart 
Disable the wired screen in Settings  
Install the other installables
- [OBS](https://obsproject.com/download)
- Premiere Pro (*no permalink*)
- [Affinity Photo 2](https://store.serif.com/en-us/update/windows/photo/2/)
- [VB-Cable](https://vb-audio.com/Cable/)
- [VLC](https://images.videolan.org/vlc/)

### OBS
Import **config** & **profile** & **settings** from `XXX`

#### SRT
To use SRT, create a `Media Source`, untick `Local file` and use url `srt://0.0.0.0:PORT?mode=listener`
https://obsproject.com/kb/srt-protocol-streaming-guide

### Premiere Pro
TODO: write how to download

### Affinity Photo 2
No config needed

### VB-Cable 
TODO: need restart ?

### VLC
No config needed
