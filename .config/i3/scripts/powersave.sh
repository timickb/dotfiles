 #!/bin/bash

essid="`iwconfig wlan0 | grep ESSID | awk {'print $4'}`"
	if [ "$essid" == "ESSID:off/any" ] ; then
		sudo iwconfig wlan0 txpower off
	fi

