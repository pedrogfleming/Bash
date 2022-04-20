# Given a tab delimited file with several columns (tsv format) print the fields from second fields to last field.
cut -d$'\t' -f 2-
# The $sign is a bash flag to let it know to use the value of '\t' (which evaluates to a tab), rather than just the actual string '\t'. It's the same concept as needing $ when echoing a variable's value, rather than just the variable's name (if x=5, echo $x will print 5; echo x will print x)

# Option 2
# cut -f 2-
# cut -f2-

# Option 3
# a=$(cat $1);
# ln=$(echo "$a" | wc -l);

# if [ $ln -lt 1 -o $ln -gt 100 ]
# then
#     exit 1;
# fi

# echo "$a" | cut -f2-

# Option 4 https://www.hackerrank.com/challenges/text-processing-cut-9/forum/comments/149343
# echo "$(tr "\t" "!" | cut -d"!" -f2- | tr "!" "\t" < /dev/stdin)"
# lets break it:
# Converting tabs into ! (so space is handled)
# Considering ! as seperator element, cut from 2nd field to last using -f2-
# translating the output again into previous format so that the output corresponds to input and get the desired output.