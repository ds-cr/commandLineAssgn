#!/bin/bash

PURPLE='\033[0;35m'
NC='\033[0m'
 
var=`date +"%d/%b/%Y %I:%m%p"`
echo -e "Current date and time is ${PURPLE}${var}${NC}"
echo -e "Username is ${PURPLE}$(whoami)${NC}"
echo -e "Home directory is ${PURPLE}$(echo $HOME)${NC}"
echo -e "Current working directory is ${PURPLE}$(pwd)${NC}"
