LOGPATH="/var/log/Shell-scripting"
LOGFILENAME=$0 | cut -d "." -f1
TIMESTAMP= $(date +"%Y-%m-%d %H:%M:%S")
LOGFILE="$LOGPATH/$LOGFILENAME-$TIMESTAMP"
echo "$LOGFILE"