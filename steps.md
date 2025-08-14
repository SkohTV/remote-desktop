# Steps

## Deploy AWS stack
Upload `windows-server.yml` to [AWS CloudFormation](https://aws.amazon.com/fr/cloudformation/)  
\> Add a name to the stack  
\> Add the tag `Name` -> `XXX`  
\> Add a KeyPair (to be able to retrieve admin password)


## After stack creation
Download RDP file  
Decrypt admin password (using KeyPair)  
Then log into the computer using a RDP Client ([Remmina](https://remmina.org/) for Linux, none required for Windows)


## After AWS setup
Install web browser using `E:\\BraveBrowser.exe`  
Download installables at `https://drive.proton.me/urls/V6HDG4DSSG#zRut7jRHPdUj`

### OBS
Import **config** & **profile** & **settings** from `XXX`

### Parsec
Install in **Per computer** mode, to be able to startup directly
