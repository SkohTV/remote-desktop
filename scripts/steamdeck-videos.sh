#!/usr/bin/env bash


HOST="deck"
USERID="342837057"
LOCAL_FOLDER="/home/${HOST}/.local/share/Steam/userdata/${USERID}/gamerecordings/clips"


# Download video and convert to mp4
function download() {
  IP="$1"
  TARGET="${HOST}@${IP}"
  CLIP_ID="$2"

  FULL_PATH="${LOCAL_FOLDER}/clip_${CLIP_ID}/video/fg_*"

  ssh "${TARGET}" -t "cd ${FULL_PATH} && ffmpeg -i session.mpd -c copy output.mp4"
  scp "${TARGET}:${FULL_PATH}/output.mp4" /tmp/steamdeck-export.mp4
}


# List videos available
function list() {
  IP="$1"
  TARGET="${HOST}@${IP}"

  ssh "${TARGET}" -t "ls -alF ${LOCAL_FOLDER}"
}



case "$1" in
  ls) 
    shift
    list "$1"
    ;;
  dl)
    shift
    download "$1" "$2"
    ;;
  *)
    echo "Unknown option $1"
    exit 1 ;;
esac
