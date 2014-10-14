# Variable declaration
#
#Current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Time to sleep m-minutes, h-hours
interval=1h
#interval=10s

#Main messeage location
msg="$DIR/rctest"

#Random generator
while true; do
	echo "Message display interval:" $interval
	#random number gererator
	random=$(( ( RANDOM % `cat $msg |wc -l` ) + 1  ))
	#picking random line from $msg
	randomLine=$(sed -n "$random"p $msg)

	sleep $interval
	notify-send -i `echo $DIR`/totem.jpg  "Reality Check" "$randomLine"

done
