#!/bin/bash

#This script displays information about the system on which it is executed.

#Tell the user the script is starting.
echo "Starting"

#Display the hostname of the system.
hostname

#Display the current date and time when this information was colelcted.
date

#Display the kernel release followed by the architecture
uname -r
uname -m

#Display the disk usage in a human readable format.
df -h

#End the script by letting the user know that it's done.
echo "Script is stopping"
