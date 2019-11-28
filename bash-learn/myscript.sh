#!/bin/bash

###########################
# Welcome here baby
###########################
touch temp.txt
chmod 777 temp.txt

tempPath="$(pwd)/temp.txt"
echo "tempPath var => ${tempPath}"
echo "welcome to bash."
echo "-----------------"
echo "Check pwd command =>"
echo "PWD value is $(pwd)"

output=$(pwd)

# program args
echo "$@ => options arg detected"
echo "$1 => first arg"
echo "$2 => secound arg"

# read data
echo "Enter password:"
read userPass
echo "You entered: ${userPass}"

if [ -d ${tempPath} ]; then
      echo "Dir exist ... ok"
else
    echo "Dir Not found. ${tempPath}"
fi

if [ -e ${tempPath} ]; then
      echo "File exist ... ok"
else
    echo "File Not found. ${tempPath}"
fi

if [ ! -f /tmp/foo.txt ]; then
    echo "/tmp/foo.txt File not found! Negotation"
fi

##########################
# LOOPS                  #
##########################

# Simple cout seq numbers
for i in $(seq 10)
do
  echo "Value is: ${i}"
done

# List files

for i in $(ls)
do
  echo "File/Dir: ${i}"
done

echo "test math $((3+3))"
echo "test math $((3/2))"
echo "test math $((5%2))"

# Little math

if [ $((10 % 3)) -eq 0 ]; then
  echo "Even!"
else
  echo "Odd!"
fi


# Math

let "a = 20"
let "e += 10 + a"
echo "e = $e"


# Genering new files

echo "New generated file @123456 " > temp1.txt

# Test crontab
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin
cromJobPath=/Volumes/POMOCNI/python-demo/bash-learn
cromJobScriptPath=/Volumes/POMOCNI/python-demo/bash-learn/myscript.sh

# crontab -
# write out current crontab
crontab -l > mycron

# echo new cron into cron file
# bash ${cromJobPath}/myecho.sh
# !/bin/sh
echo "*/1 * * * * bash ${cromJobPath}/myecho.sh" >> /tmp/cron.out
# install new cron file
crontab mycron
rm mycron

crontab -l > mycro2
echo "*/1 * * * * touch  ${cromJobPath}/blabla.txt" >> mycron2
crontab mycron2
rm mycron2

# * * * * *  sleep 30; ${cromJobPath}/myecho.sh
# check
# ps aux | grep cron

# alternative
# #!/bin/sh
#while [ true ]
#do
#    sh special_svn_script.sh
#    sleep 10
#done
# chmod 777 temp1.txt


# Test
