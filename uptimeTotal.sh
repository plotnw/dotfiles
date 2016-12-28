#!/bin/bash

hours=$(cat uptimelog | grep -oE "[0-9]*\ hours" | grep -oE "[0-9]*" | paste -sd+ | bc)

minutes=$( cat uptimelog | grep -oE "[0-9]*\ minutes" | grep -oE "[0-9]*" | paste -sd+ | bc)

echo "$(($hours + $minutes / 60)) hours, $(($minutes % 60)) minutes"
