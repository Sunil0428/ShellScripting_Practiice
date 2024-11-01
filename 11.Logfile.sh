LOGPATH="/var/log/Shell-scripting"
LOGFILENAME= $($0 | cut -d "." -f1)
TIMESTAMP= $date 
LOGFILE="$LOGPATH/$LOGFILENAME-$TIMESTAMP"
echo "$LOGFILE"