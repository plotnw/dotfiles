var=$( cat /sys/class/power_supply/BAT0/capacity )
#declare -r var=40



if (( var < 10 )); then
  echo ♡ ! ! ! ♡
elif (( var < 20 )); then
  echo ♥ ♡ ♡ ♡ ♡
elif (( var < 40 )); then
  echo ♥ ♥ ♡ ♡ ♡
elif (( var < 60 )); then
  echo ♥ ♥ ♥ ♡ ♡
elif (( var < 80 )); then
  echo ♥ ♥ ♥ ♥ ♡
elif (( var < 100 )); then
  echo ♥ ♥ ♥ ♥ ♥
fi

