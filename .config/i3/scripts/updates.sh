#!/bin/bash

UPDATES="$(checkupdates)"

echo "<span font='9' color='#131e20' bgcolor='#29897b'>⚙ $(checkupdates | wc -l) </span>"
