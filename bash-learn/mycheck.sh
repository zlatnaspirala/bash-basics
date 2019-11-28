#!/bin/bash

# Variable flag
MY_OS=none
# Current folder
appPathFileNameInfo="$(pwd)"

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    MY_OS="Darwin"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    $MY_OS="Linux"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
    $MY_OS="MINGW32_NT"
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
    $MY_OS="MINGW64_NT"
fi

echo "os: " ${MY_OS}

######################################################################
# Backup
######################################################################

# Save fullPath
user=$(whoami)
output=$appPathFileNameInfo/${user}_home_$(date +%Y-%m-%d_%H%M%S).tgz

tar -czf $output $appPathFileNameInfo/help.txt
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output

for fgbg in 38 48 ; do # Foreground / Background
    for color in {0..255} ; do # Colors
        # Display the color
        printf "\e[${fgbg};5;%sm  %3s  \e[0m" $color $color
        # Display 6 colors per lines
        if [ $((($color + 1) % 10)) == 4 ] ; then
            echo # New line
        fi
    done
    echo # New line
done

exit 0