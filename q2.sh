#!/bin/bash

RED='\033[0;31m'
OLIVE='\033[0;33m'
NC='\033[0m' # No Color

# Gettng input
read -p 'Enter the number: ' val

# Check for empty string
while [[ -z $val ]]; do
    echo -e "Please enter something, ${RED}empty input${NC} not accepted!"
    echo -e "If you want to exit then enter ${OLIVE}\"quit\" ${NC}or ${OLIVE}\"q\"${NC}"
    read -p 'Enter the number: ' val

    if [[ "$val" == "q" || "$val" == "quit" ]]; then
        echo "Exiting"
        exit
    fi
done

# Check for number
while ! [[ "$val" =~ ^[0-9]+$ ]]; do
    echo -e "Please ${RED}enter ${NC}a ${RED}number${NC}"
    read -p 'Enter a number: ' val
done

#Print Table
i=1
echo -e "\nTable is"
while (( i <= 10 )); do
    printf "%s %-2s %s \n" "$val *" "$i" "= $(($val*$i))"
    ((i++))
done