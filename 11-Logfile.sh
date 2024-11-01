#!/bin/bash
LOGPATH="/var/log/Shell-scripting"
LOGFILENAME= echo $0 | cut -d "." -f1
TIMESTAMP= date 
LOGFILE="$LOGPATH/$LOGFILENAME-$TIMESTAMP"
echo $LOGFILENAME
echo $TIMESTAMP
echo $LOGFILE