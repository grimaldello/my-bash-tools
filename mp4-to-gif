#!/bin/bash

OUTPUT_FILE_NAME="out.gif";
FRAME_RATE=5;

if [ -z "$1" ]
  then
    echo "ERROR! No file video input supplied as 1st parameter.";
    echo "Examples:";
    echo "mp4-to-gif.sh video.mp4 video.gif";
    echo "mp4-to-gif.sh video.mp4 video.gif 10";
    exit 1;
fi

if [ -z "$2" ]
  then
    echo "WARNING! No output file name supplied as 2nd parameter. Default output name: $OUTPUT_FILE_NAME";
  else
    OUTPUT_FILE_NAME=$2;
fi

if [ -z "$3" ]
  then
    echo "WARNING! No frame rate supplied as 3rd parameter. Value set to: $FRAME_RATE";
  else
    FRAME_RATE=$3;
fi

ffmpeg -i $1 -r $FRAME_RATE -pix_fmt rgb24 $OUTPUT_FILE_NAME
