#!/bin/bash

if [ -z "$1" ]
  then
    echo "No image path supplied"
else

  OUTPUT="<img src=\"data:image/jpeg;base64,$(base64 -w 0 $1)\">" 

  echo "$OUTPUT"
  if [ -x "$(command -v xclip)" ]
    then
      version="$(uname -a)"
      if [[ $version == *"Microsoft"* ]]
      then
        echo -n "$OUTPUT" | clip.exe
      else
        echo -n "$OUTPUT" | xclip -selection clipboard
      fi
      echo ""
      echo "img tag also copied to clipboard"
  else
    echo "$OUTPUT"
  fi
fi
