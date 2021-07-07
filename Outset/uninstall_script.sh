#!/bin/bash
launchctl unload "/Library/LaunchDaemons/com.github.outset.boot.plist"
rm -fv "/Library/LaunchDaemons/com.github.outset.boot.plist"
launchctl unload "/Library/LaunchDaemons/com.github.outset.cleanup.plist"
rm -fv "/Library/LaunchDaemons/com.github.outset.cleanup.plist"
launchctl unload "/Library/LaunchAgents/com.github.outset.login.plist"
rm -fv "/Library/LaunchAgents/com.github.outset.login.plist"
launchctl unload "/Library/LaunchAgents/com.github.outset.on-demand.plist"
rm -fv "/Library/LaunchAgents/com.github.outset.on-demand.plist"
rm -rfv /usr/local/outset
pkgutil --forget com.github.outset