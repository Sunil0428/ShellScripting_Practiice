#!/bin/bash
LOGPATH="/var/log/Shell-scripting"
LOGFILENAME= echo $0 | cat -d "." -f1
# TIMESTAMP= $date 
# LOGFILE="$LOGPATH/$LOGFILENAME-$TIMESTAMP"
echo "$LOGFILENAME"