Q1

- Used date for printing current date
- Used whoami for printing username
- Used $HOME (global variable) for printing the home directory
- Used `pwd` command to print the current directory

***********

Q2

- Used $# to determine the no. of arguments passed in the shell
- Then took an iterable named a, iterated it till 10, printing the product in each line

***********

Q3

Logic - A number is prime if it's itself's only divisor. We can check if a number is divisible by any value less than or equal to its half. If it is divisible then it isn't a prime.

Code :
- Read a number into num variable.
- Then take an iterator starting from 2.
- Increment the iterator till its square is less than the half of the value to be checked. i.e. `itr^2 <= val`
- If at any point iterator divides the `val` then set the `flag` to 1 and break
- After the loop check the flag and print accordingly

***********

Q4

- Take folder name from user
- Check if the directory doesn't exist using `[[ ! -d "$dirname" ]]`. Create a directory if it doesn't exist
- Created a file named File1.txt (using touch) in the newly created directory
- Then for adding the content of Q2(Table.sh), first store it in a variable named `var1` using cat.
- For adding the content to File1, echo `var1` but redirect output to File1.txt.
    Code for this point - echo "$(var1)" > ${dirname}/File1.txt
- For printing the content of Desktop used echo and ran `ls` inside it.

***********

Q5

- Initialized array using ().
- print the whole array using echo and ${array[@]}
- Take three variables, len, max and min. Assign max and min to first value of array, len to zero.
- Iterate over array using `for i in ${array[@]}`
- Check if value greater than max then set max to it.
- Check if value less than min then set min to it.
- Increment len regardless of ifs.
- Finally print the value of all variables.
