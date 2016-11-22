#!/bin/bash
if [[ $(iwgetid -r) ]]; then
  echo "<span font='9' color='#131e20' background='#2e63a0'>  $(iwgetid -r) </span>"
else
  echo "<span font='9' color='#131e20' background='#2e63a0'>   N/A </span>"
fi 
