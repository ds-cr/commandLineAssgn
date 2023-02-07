# Command Line Assignment

I have attached five files for each code. The screenshots have all details for verifying the output of code and checking for other things *(like adding and printing to files in q4)*.<br>
For quick lookup, the screenshots are attached after the explanation.

## Explanation
### Use of colors
I have used colors to format the output. The code in each file contains variable names like purple, orange, green... Their values are string which when added to the output print it in the respective color or formatting(*for italics*) eg - `ORANGE=\033[1;33m`. Here NC means no color, which is used to reset the coloring while printing.

Colors are basically used to highlight outuput.

### Important parts of codes
**`echo -e`** : Allows to use escape characters in echo like - \n (*used for colors*)

**Formatting Date** : `%d` - Represents date, `%b` - Month in words (*first three*), `%Y` - Current Year, `%I` - Hour (*in 12 hr format*), `%m` - minutes, `%p` - representing am/pm

**`-z` _val_** : checks if the value contained in `val` is empty or not

**`"$val" =~ ^[0-9]+$`** : check if the string in `val` variable is a number.

**getting square root** : used `bc` command. Its format is fixed.

**printStars** : This function simply prints `*` 80 times

**printIndent** : This function has two parts
  - Convert the input to array
  - Print the input(*in italics*)
  - (Optional) If the second & third argument are supplied. It checks if any line of the input starts with second argument. If any line matches, it prints the prompt message in third argument(*in green*).
    
    ***Note*** *: In bash invoking a function is little different than other languages. There are no brackets. eg- `func(arg1, arg2)` would be written as `func arg1 arg2` in bash.*

### Q1
<img src="https://github.com/ds-cr/commandLineAssgn/blob/master/photos/Q1.png" alt="Q1" width = "600">

### Q2
<img src="https://github.com/ds-cr/commandLineAssgn/blob/master/photos/Q2.png" alt="Q2" width = "400">

### Q3
<img src="https://github.com/ds-cr/commandLineAssgn/blob/master/photos/Q3.png" alt="Q3" width = "400">

### Q4
<img src="https://github.com/ds-cr/commandLineAssgn/blob/master/photos/Q4.png" alt="Q4" width = "800">

### Q5
<img src="https://github.com/ds-cr/commandLineAssgn/blob/master/photos/Q5.png" alt="Q5" width = "400">
