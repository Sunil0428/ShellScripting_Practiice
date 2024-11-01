LOGPATH="/var/log/Shell-scripting"
LOGFILENAME=$0
TIMESTAMP= $(date +"%Y-%m-%d %H:%M:%S")
LOGFILE="$LOGPATH/$LOGFILENAME-$TIMESTAMP"
echo "$LOGFILE"