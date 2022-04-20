# Given a sentence, identify and display its first three words. Assume that the space (' ') is the only delimiter between words.
cut -d ' ' -f -3 

# Option 2
# awk '{print $1 " " $2 " " $3}'