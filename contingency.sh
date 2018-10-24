#!/bin/sh
sel raw | grep 3
if [ $? -eq 0 ]; then
	>&2 date +"%R Jukebox is on air"
	>&2 date +"%R Switching to off air"
	echo "Switching to off air. CHECK LIVE FEED" | mail -s "MOUNT IS HANGING" danzibob@gmail.com 
il598@york.ac.uk
	#sel 8
else
	sel raw | grep 8
	if [ $? -eq 0 ]; then
		>&2 date +"%R Off-Air is on air. Taking no action."
	else
		>&2 date +"%R Jukebox is not on air"
		>&2 date +"%R Staying as is"
		# Alert a human
		echo "Dolby can't access music store! Jukebox isn't on air right now. Staying as is. Check campus audio." | mail -s "Mount outright failed" danzibob@gmail.com il598@york.ac.uk
	fi
fi
