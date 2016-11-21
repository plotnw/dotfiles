#!/bin/bash

UPDATES="$(checkupdates)"

echo "<span font='9'>$(checkupdates | wc -l)</span>"
