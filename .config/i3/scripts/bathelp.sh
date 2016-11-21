var=$( cat /sys/class/power_supply/BAT0/capacity )
#declare -r var=40
RED='\033[0;31m'


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
elif (( var < 95 )); then
  echo ♥ ♥ ♥ ♥ ♥ 
elif (( var < 101 )); then
  echo ♥ ♥ ♥ ♥ ♥ ♥ 
fi

