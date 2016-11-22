#!/bin/bash

echo "<span color='#131e20' bgcolor='#6da090' font_desc='FontAwesome'> </span><span color='#131e20' bgcolor='#6da090' font='9'>$(amixer get Master | grep -m 1 -oE '\[[0-9][0-9]\%\]'| head -1)</span>"
