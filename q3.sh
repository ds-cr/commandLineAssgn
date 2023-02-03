#!/bin/bash

# Some colors for formatting output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


read -p "Enter number: " val

# Get square root of number
sqrt_val=$(echo "scale=0; sqrt($val)" | bc)

# Check if square root or not
i=2
while (( $i <= $sqrt_val )); do

    if (($val % $i == 0)); then
        echo -e "Number ${RED}not prime${NC}, divisible by $i, $val / $i = $(( $val/$i ))"
        exit
    fi
    (( ++i ))
done

echo -e "Number is ${GREEN}prime"