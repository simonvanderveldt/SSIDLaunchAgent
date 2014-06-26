# SSIDLaunchAgent
Small [launchd](https://developer.apple.com/library/mac/documentation/Darwin/Reference/Manpages/man8/launchd.8.html) LaunchAgent which makes it possible to execute a shell script based on the wireless network you're connected to.
It fetches the SSID of the Wifi network when a wireless connection is established and then executes a shell script with the name of this SSID (`$SSID.sh`).

# Installation
Execute `sh ./install`.

Manual install:

- Copy `SSIDLaunchAgent.sh` to `/opt/SSIDLaunchAgent` (or change the path in `SSIDLaunchAgent.plist` to the path you want) and make it executable (`chmod +x`)
- Create a bash script with the filename of the SSID you want to act upon in `/opt/SSIDLaunchAgent/` which executes whatever you want to do and make it executable (`chmod +x`)
- Copy `SSIDLaunchAgent.plist` to ~/Library/LaunchAgents
- Load the LaunchAgent by executing `launchctl load ~/Library/LaunchAgents/SSIDLaunchAgent.plist`

That's it! :) After connecting to a wireless network the `$SSID.sh` file will be executed.

# Thanks
Based on [Mac OS X LocationChanger @ TECH.inhelsinki.nl](http://tech.inhelsinki.nl/locationchanger/) and [Set 'Location' automatically via a script  @ hints.macworld.com](http://hints.macworld.com/article.php?story=20060122060330816)
