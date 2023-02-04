#!/bin/bash

BOLD='\033[1m'
NC='\033[0m'

arr=(2 3 4 1 6 7)
echo "Array is (${arr[@]})"
echo -e "\nLength of array is ${BOLD}${#arr[@]}${NC}"
max=${arr[0]}
min=${arr[0]}

for i in ${arr[@]}; do
    if (( ${i} < ${min} )); then
        min=${i}
    fi
    if (( ${i} > ${max} )); then
        max=${i}
    fi
done

echo -e "Minimum element = ${BOLD}${min}${NC}"
echo -e "Maximum element = ${BOLD}${max}${NC}"