#!/bin/bash
echo selfdestruct > /var/bluesky/.getHelp
sleep 30
launchctl unload -w /Library/LaunchDaemons/com.solarwindsmsp.bluesky.helper.plist
launchctl unload -w /Library/LaunchDaemons/com.solarwindsmsp.bluesky.plist
launchctl unload -w /System/Library/LaunchDaemons/ssh.plist
systemsetup -f -setremotelogin off
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -deactivate -configure -access -off
rm -rf /var/bluesky
rm -rf /Library/LaunchDaemons/com.solarwindsmsp.bluesky.helper.plist
rm -rf /Library/LaunchDaemons/com.solarwindsmsp.bluesky.plist
rm /private/var/db/receipts/com.solarwindsmsp.bluesky.pkg.bom
rm /private/var/db/receipts/com.solarwindsmsp.bluesky.pkg.plist
pkgutil --forget com.solarwindsmsp.bluesky.pkg
dscl . -delete /Users/bluesky
exit 0