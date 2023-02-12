#!/bin/bash

# Some colors for formatting output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

function isPrime {
    i=2
    flagval=0

    # Check if value is supplied or not
    if (($# != 1)); then
        echo "${RED}Incorrect no. of arguments supplied${NC}"
	exit
    fi

    # Get the square root of number
    sqrt_val=$(echo "scale=0; sqrt($1)" | bc)

    # Check if prime or not
    while (( $i <= $sqrt_val )); do

        if (($val % $i == 0)); then
            flagval=1
	    break
        fi
        (( ++i ))
    done

    # Returning value
    echo $flagval
}

read -p "Enter number: " val

# Call function isPrime
flagval=$(isPrime  ${val})

if (($flagval == 1)); then
    echo -e "Number ${RED}not prime${NC}"
else
    echo -e "Number is ${GREEN}prime${NC}"
fi   
