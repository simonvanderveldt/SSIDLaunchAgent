#!/bin/bash

# Get path for this script
# From http://stackoverflow.com/a/246128
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Wait till the connection is fully established
sleep 2

# Get SSID
strSSID=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'`
# Get MAC in case you want to filter on the MAC address of the Access Point
strMAC=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ BSSID/ {print substr($0, index($0, $2))}'`

# Execute shell script with same name as SSID
sh $DIR/$strSSID.sh

# Exit the script returning 0
exit 0
