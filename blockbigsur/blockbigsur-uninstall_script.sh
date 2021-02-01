#!/bin/bash

current_user_uid=$( echo "show State:/Users/ConsoleUser" | scutil | awk '/UID :/ && ! /loginwindow/ { print $3 }' )

launchd_item_path="/Library/LaunchAgents/com.hjuutilainen.bigsurblocker.plist"
launchctl bootout gui/${current_user_uid} "${launchd_item_path}"

rm -f /Library/LaunchAgents/com.hjuutilainen.bigsurblocker.plist
rm -f /usr/local/bin/bigsurblocker

pkgutil --forget com.hjuutilainen.bigsurblocker