# Given two integers,  and , identify whether  or  or .
# Exactly one of the following lines:
# - X is less than Y
# - X is greater than Y
# - X is equal to Y

read x
read y
if [ $x -lt $y ]; then
    echo "X is less than Y"
elif [ $x -gt $y ]; then
    echo "X is greater than Y"
else
    echo  "X is equal to Y"
fi

# option 3
# #!/bin/bash
# read x
# read y
# [[ $x -gt $y ]] && echo 'X is greater than Y'
# [[ $x -eq $y ]] && echo 'X is equal to Y' 
# [[ $x -lt $y ]] && echo 'X is less than Y' 
# exit 0

# Option 3
# read firstNumber
# read secondNumber
# if (($firstNumber > $secondNumber)); then
#     echo X is greater than Y;
# elif (($firstNumber < $secondNumber)); then
#     echo X is less than Y;
# else
#     echo X is equal to Y;
# fi