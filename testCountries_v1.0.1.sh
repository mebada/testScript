#!/bin/bash
export SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
source utils/functions.sh
#URL FREQUENCY SLEEPTIME
#check_health "http://localhost:8001/health/live"  20  3
confirm "http://localhost:8001/countries/uk" "EU"
sleep 2
confirm "http://localhost:8001/countries/uk" "Ukraine"
sleep 2
confirm "http://localhost:8001/countries" "EG"




