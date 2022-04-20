# Given  lines of input, print the  character from each line as a new line of output. It is guaranteed that each of the  lines of input will have a  character.
c=$(cat | cut -b 3)
printf '%s\n' "${c[@]}"
# The difference between $@ and $*:
# Unquoted, the results are unspecified. In Bash, both expand to separate args and then wordsplit and globbed.
# Quoted, "$@" expands each element as a separate argument, while "$*" expands to the args merged into one argument: "$1c$2c..." (where c is the first char of IFS).

# Option 2
# cut -c3
# cut works on every line, therefore is not necessary perform a loop.

# Option 3
# cut -c3 $1
# Command : cut Option : -c Value : 3 Argument : $1
# Simple English : Hey cut! Do a cut at 3rd character of every input of the first argument I give(1st Command Line Argument ($1)) and give me results.
# Command line arguments in BASH are denoted as $[1...n]

# Option 4
# while read line
# do
# echo $line | cut -c3 -
# done

# Option 5
# while  read -r line || [[ -n "$line" ]]; do
#     echo $line | head -c 3 | tail -c 1
#     echo ""
# done