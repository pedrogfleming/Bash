# Use a for loop to display the natural numbers from 1  to 50 .
for NUM in {1..50} 
    do
        echo $NUM
    done

# Option 2
# echo {1..50} | sed 's/ /\n/g'

# Option 3
# echo {1..50} | tr ' ' '\n'
