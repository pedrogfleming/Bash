# Given a sentence, identify and display its fourth word. Assume that the space (' ') is the only delimiter between words.
cut -d ' ' -f 4

# Option 2
# while read line; do
#   echo $line | cut -d ' ' -f 4
# done

# Option 3
# cut -d " " -f 4-4