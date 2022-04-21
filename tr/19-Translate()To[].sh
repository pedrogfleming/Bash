# In this challenge, we practice using the tr command because it is a useful translation tool in Linux.
# In a given fragment of text, replace all parentheses   with box brackets  .
tr '()' "[]" 

# Option 2
# cat $1 | tr "(" "[" | tr ")" "]"

# Option 3
# tr '()' '[]'