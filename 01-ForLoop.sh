# Your task is to use for loops to display only odd natural numbers from 1 to 99.
for x in {1..99};do
    if ((x % 2 != 0 ))
        then
            echo $x
        fi
  done

# Shorter version
# seq 1 2 99

# Option 2
#   for number in {1..99..2}
# do
#     echo $number
# done

# Option 3
# LIMIT=100
# prime=0
# for ((a=1; a <= LIMIT ; a++))
# do
#     let "prime= $a % 2"
#     if [ $prime -eq 1 ]
#     then
#     echo $a
#     fi
# done

# Option 4
# for NUM in {1..99} 
# do
#     evenNUM=$(expr $NUM % 2)
#     if [ $evenNUM = 1 ] 
#     then
#         echo $NUM
#     fi 
# done
