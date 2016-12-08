#!/bin/bash

var=$( cat /sys/class/power_supply/BAT0/capacity )
var2=$( acpi | grep -o '[0-9][0-9]:[0-9][0-9]:[0-9][0-9]' )
notify-send "Battery" "$var%, $var2 remaining"
