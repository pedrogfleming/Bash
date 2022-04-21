# In this challenge, we practice using the tr command because it is a useful translation tool in Linux.
# In a given fragment of text, delete all the lowercase characters a-z.

tr -d 'a-z'

# Option 2
# read A
# while [[ -n "$A" ]] 
# do
#   echo "$A" | tr -d [a-z]
#   read A
# done
# echo ""