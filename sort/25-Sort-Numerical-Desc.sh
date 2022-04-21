# You are given a file of text, where each line contains a number (which may be either an integer or have decimal places). There will be no extra characters other than the number or the newline at the end of each line. Sort the lines in descending order - - such that the first line holds the (numerically) largest number and the last line holds the (numerically) smallest number.
sort -n -r

# Option 2
# sort -gr $1

# Option 3
# sort - -rn

# Option 4
# cat > ntest
# sort -rn ntest