#!/bin/bash

PURPLE='\033[0;35m'
NC='\033[0m'
 
var=`date +"%d/%b/%Y %I:%m%p"`
echo -e "Current date and time is ${PURPLE}${var}${NC}"
