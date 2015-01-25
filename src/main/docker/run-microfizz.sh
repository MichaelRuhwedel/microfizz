#!/bin/bash
trap ctrl_c INT

ctrl_c(){
 exit 0;
}

while true; do

  java -jar /usr/share/microfizz/*.jar&

  PID=$!

  inotifywait\
    -e create\
    -e moved_to\
    /usr/share/microfizz

  kill $PID
done