#!/bin/bash
if [ -d /Library/MonitoringClient/ ]; then
	echo "Watchman present. Beginning removal."
	exit 0
else
	echo "Watchman not present. Exiting."
	exit 1
fi