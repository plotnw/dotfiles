#!/bin/bash

if [[ $(acpi | grep 'Charging') ]]; then
  echo "<span font='9' color='#131e20' background='#0033cc'><b>+</b> </span>"
else
  echo "<span font='9' color='#131e20' background='#0033cc'><b>-</b> </span>"
fi
