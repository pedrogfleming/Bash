# Read in one character from STDIN.
# If the character is 'Y' or 'y' display "YES".
# If the character is 'N' or 'n' display "NO".
# No other character will be provided as input.

read x
if [ "$x" = "Y" ] ; then
    echo "YES"
elif [ "$x" = "N" ] ; then
    echo "NO"
fi

# Option 2
# read x
# [[ $x == 'Y' ]] && echo 'YES'
# [[ $x == 'N' ]] && echo 'NO'
# exit 0

# Option 3
# read char; echo -e "YES\nNO\n" | grep -i $char

# Option 4
# read c
# [[ "$c" == [yY] ]] && echo "YES" || echo "NO"
# The return status of AND and OR lists is the exit status of the last command executed in the list
# With command1 && command2, command2 is executed if, and only if, command1 returns an exit status of zero (true)
# With command1 ││ command2, command2 is executed if, and only if, command1 returns a non-zero exit status (false)