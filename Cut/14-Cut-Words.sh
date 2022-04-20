# Given a tab delimited file with several columns (tsv format) print the first three fields.
# Input Format
# A tab-separated file with lines of ASCII text only.
cut -d$'\t' -f 1-3

# Option 2
# cut -f -3

# Option 3
# while read -r x
# do
#     echo "$x" | cut -f1-3
# done
# exit 0