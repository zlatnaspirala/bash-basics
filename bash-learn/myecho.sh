#!/bin/bash

###########################
# Welcome here baby
###########################

tempPath="$(pwd)/temp.txt"
savepath="$(pwd)/temp2.txt"
echo "tempPath var => ${tempPath}"
echo " THIS IS MY ECHO "
echo "Novi generisan fajl ZERO POINT " > ${savepath}
osascript -e 'tell app "System Events" to display dialog "Yada yada yada"'

# osascript -e 'tell app "System Events" to display dialog "Yada yada yada"'

