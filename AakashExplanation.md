Q1 

- Used `date` for printing date and time
    - %d : Current date
    - %m : month in number
    - %Y : year in four number format
    - %H : current hour (24 hr format)
    - %M : current minute
    - %S : current second
- Used `whoami` for printing current user
- Used `~` for printing home directory
- Used `pwd` for printing current directory

***********

Q2

- Read the value into `number` variable
- Used `-z` to check if the `number` is an empty string
- Used an `itr` for printing table. Starting from 1 incrementing till 10 and print the product for each value.

***********

Q3

Logic - A number is prime if it's not divisible by any other number than itself. So go from 1 till square root of number and check for divisors (for each divisor of `val` one divisor is always less than the square root of `val`)

Code - 
- Take an iterator starting from 2.
- Check if the square of iterator is less than the entered number.
- Then check for divisibility
    - If divisible then print "Not Prime" and exit
    - Else continue
- If program arrives at end that means the number is prime and print accordingly.

***********

Q4

- Make the directory using `mkdir`
- Create the file using `touch` command
- Append the content of Q2(Table.sh) to File1 using `cat` and `redirection`.
- To append line to file used `echo` and `redirection`.
- To print content of desktop used `ls`.

***********

Q5

- Made the array using `()`
- Calculated the length of array using `${#arr[@]}`
- Then took variables max and min and assigned them to the first variable.
- Then traversed the loop and compared each value with max and min to set values accordingly.
- Finally printed the max and min values.
