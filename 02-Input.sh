# Write a Bash script which accepts name as input and displays the greeting "Welcome (name)"
read name
echo "Welcome $name"

# Option 2
# printf "Welcome "
# cat

# Option 3
# echo "Welcome $(</dev/stdin)"
# Whenever you use something like `$(command) in bash, you're creating a new sub-shell for that command. The input is obtained in that subshell, and the output replaces the entire $(command)` section in the original shell. Essentially think of it like executing a command first and then putting the ouput in place of the bracketed section.
# Now, </dev/stdin is just redirecting the input from the subshell. So, whatever is entered in the subshell (sample inputs from the test-cases) gets sent (and replaces) $(</dev/stdin).

# Option 4
# sed -r 's/(.*)/Welcome \1/g'
# I'm capturing the contents of stdin using (.*) regexp which can be referenced using \1 where \1 refers to 1st captured group and then prepending the text with "Welcome".
# The syntax is s/[text]/[replacement]/
# /g stands for  global replacemente