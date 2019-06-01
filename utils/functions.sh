#!/bin/bash
# author : Mahmoud  I Ebada

# check_health URL TIME
# frequency of checks every 5sec

function check_health(){

url=$1
max=$2
sleepTime=$3
var=0

while [ $var -le $max ]
do
 if http get $url &> /dev/null
   then
    echo "$(date ) ---- LIVE"
   else
    echo "$(date) ---- DOWN"
 fi
     
 $SCRIPT_PATH/utils/show_spinner.sh sleep $sleepTime
 var=$((var+1))


done
}


function confirm(){
url=$1
greper=$2

echo "Testing $url for \" $greper\""
if http get $url | grep $greper >/dev/null
 then
    echo "OK"
  else
    echo "NOK"
    echo "$url doesn't contain $greper"
fi

}
#check_health "http://localhost:8001/health/live"  20
