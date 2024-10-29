#!/bin/bash

echo "Args passed $@"
echo "No of arges that are passed $#"
echo "Name of the script $0"
echo "Name of the crrent working directory $PWD"
echo "Home directory $HOME"
echo "PID of the current current $$"
sleep 100 &

echo "PID of the last background command $!"