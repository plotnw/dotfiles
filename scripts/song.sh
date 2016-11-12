#!/bin/bash

echo "$(cmus-remote -Q | grep -oP '\b\/\b(?:(?!\b\/\b).)*?\b\.mp3\b')"
