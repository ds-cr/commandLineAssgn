#!/bin/bash

# Colors
BOLDPURPLISH='\033[1;38;5;198m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[1;33m'
ITALICISE='\033[3m'

# Function to print line of starts. Separate different parts of code
printStars () {
    echo
    for i in {1..80}; do
        echo -n "*"
    done
    echo
}

# For printing newline separated content with indent
# It also allows to check against a certain value and print a prompt if the value is found
function printIndent {
    if [[ $# != 1 && $# != 3 ]]; then
        echo "Incorrect no. of arguments passed"
        return
    fi

    # Convert the input to array
    SAVEIFS=${IFS}
    IFS=$'\n'
    content=($1)
    IFS=${SAVEIFS}

    #Print
    echo -en "${ITALICISE}"
    for i in "${!content[@]}"; do
        if [[ -z $2 ]]; then
            echo "    ${content[${i}]}"
        elif [[ ${content[${i}]} =~ ^$2.*$ ]]; then
            echo -e "    ${GREEN}${content[${i}]} -> $3${NC}"
        else
            echo "    ${content[${i}]}"
        fi
    done
    echo -en "${NC}"
}

# Check if directory already exists and remove it (due to running code multiple times)
if [[ -d "./Assignment" ]]; then
    $(rm -rf Assignment)
fi

# Create Assignment Folder
echo -e "Creating folder Assignment ${ITALICISE}(using mkdir)...${NC}"
$(mkdir Assignment)
echo -e "\n${ORANGE}Proof - ${BOLDPURPLISH}ls ${NC}"
printIndent "$(ls)" "Assi" "Folder Created!"

printStars

# Create File1.txt
echo -e "\nCreating file File1.txt in Assignment ${ITALICISE}(using touch ./Assignment/File1.txt)...${NC}"
$(touch ./Assignment/File1.txt)

echo -e "\n${ORANGE}Proof - ${BOLDPURPLISH}ls ./Assignment${NC}"
printIndent $(ls ./Assignment) "File1" "File Created!"

printStars

# Add q2.sh to File1.txt
echo -e "\nCopying Table.sh${ITALICISE}(q2.sh)${NC} into File1.txt ${ITALICISE}(using cat q2.sh > ./Assignment/File1.txt)${NC}"
$(cat q2.sh > ./Assignment/File1.txt)

echo -e "\n${ORANGE}Proof - ${BOLDPURPLISH}cat Assignment/File1.txt${NC}"
printIndent "$(cat Assignment/File1.txt)"

printStars

# Append text to File1.txt
echo -e "\nAppend text to File1.txt ${ITALICISE}(using echo -e \"\\\n\033[1mtext${NC}\"${ITALICISE} >> ./Assignment/File1.txt)${NC}"
$(echo -e "\nWelcome to Sigmoid" >> ./Assignment/File1.txt)

echo -e "\n${ORANGE}Proof - ${BOLDPURPLISH}cat ./Assignment/File1.txt | tail${NC}"
printIndent "$(cat ./Assignment/File1.txt | tail)" "Wel" "Text Added!"

printStars

# List all the contents of Desktop folder
echo -e "\nList the contents of Desktop folder ${ITALICISE}(using echo \"ls ~/Desktop/\")${NC}\n"
echo "$(ls ~/Desktop/)"