#!/bin/bash
isplaying="false"
iskilled="false"
while true
do 
	line=$(pgrep -x xscreensaver)
	if [ -z "$line" ] && [ "$isplaying" = "false" ]; then
	
		
			echo "Not running starting it..."
			xscreensaver --no-splash &
			iskilled="false"
		
		#echo "xscreensaver is off"
	else
		ans=$(playerctl status)
		if [ "$ans" = "Playing" ] && [ "$iskilled" = "false" ]; then
			echo "something playing killing it"
			killall xscreensaver 
			isplaying="true"
			iskilled="true"
		elif [ "$ans" = "Paused" ] && [ "$iskilled" = "true" ]; then
			echo "playback paused" 
			isplaying="false"
		fi
	fi
	sleep 60
done
	

