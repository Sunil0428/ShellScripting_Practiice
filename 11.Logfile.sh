#!/bin/bash
LOGPATH="/var/log/Shell-scripting"
FILe=$0
LOGFILENAME= $($FILe | cut -d "." -f1)
# TIMESTAMP= $date 
# LOGFILE="$LOGPATH/$LOGFILENAME-$TIMESTAMP"
echo "$LOGFILENAME"