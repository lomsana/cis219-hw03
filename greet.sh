#!/bin/bash

clear
user=`whoami`
hour=`date +"%H"`

if [ $hour -ge 6 ] && [ $hour -lt 12 ]; then
	day_time="morning"
elif [ $hour -ge 12 ] && [ $hour -lt 17 ]; then
	day_time="afternoon"
elif [ $hour -ge 17 ] && [ $hour -lt 23 ]; then
	day_time="evening"
else
	day_time="early morning"
fi
echo "Good $day_time, $user"
echo "Your shell is $SHELL."
echo "The current time is $(date +"%I:%m %p, %A %b %d, %Y")."

