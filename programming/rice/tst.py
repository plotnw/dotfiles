#! /usr/bin/env python

import os

try:
    #bat1 = int(open('/sys/class/power_supply/BAT1/capacity', 'r').read())
    bat0 = int(open('/sys/class/power_supply/BAT0/capacity', 'r').read())
    bat_total = int((bat1 + bat0) / 2)
    if bat_total > 95:
        print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004")
    elif bat_total > 85:
        print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf08a")
    elif bat_total > 75:
        print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf08a \uf08a")
    elif bat_total > 65:
        print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf08a \uf08a \uf08a")
    elif bat_total > 55:
        print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf004 \uf08a \uf08a \uf08a \uf08a")
    elif bat_total > 45:
        print("\uf004 \uf004 \uf004 \uf004 \uf004 \uf08a \uf08a \uf08a \uf08a \uf08a")
    elif bat_total > 35:
        print("\uf004 \uf004 \uf004 \uf004 \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")
    elif bat_total > 25:
        print("\uf004 \uf004 \uf004 \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")
    elif bat_total > 15:
        print("\uf004 \uf004 \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")
    elif bat_total > 5:
        print("\uf004 \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")
    else:
        print("\uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a \uf08a")
except(Exception):
    bat0 = int(open('/sys/class/power_supply/BAT0/capacity', 'r').read())
    print(int(bat0))
    
