# Given two integers,  and , find their sum, difference, product, and quotient.

read a
read b 

echo $((a + b))
echo $((a - b))
echo $((a * b))
echo $((a / b))

# Option 2
# read x
# read y
# for i in {+,-,"*",/}
# do
#     var=$(((x)$i(y)))
#     echo $var
# done
# * is a wildcard character. It's surrounded in quotes to prevent wildcard expansion.
# Without the quotes, * will instead become a list of all files in the working directory. This will cause an error in the arithmetic expression.

# option 3
# read a
# read b
# echo "$a+$b" | bc
# echo "$a-$b" | bc
# echo "$a*$b" | bc
# echo "$a/$b" | bc

# Option 4
# read X
# read Y
# printf "%s\n" $X{+,-,*,/}"($Y)" | bc
# "%s\n" <<<print each string separated by a newline

# Option 5
# read X
# read Y
# echo $[X+Y]
# echo $[X-Y]
# echo $[X*Y]
# echo $[X/Y]

# Option 6
# read a
# read b
# sum=`expr $a + $b`
# diff=$(expr $a - $b)
# mul=$(($a * $b))
# div=$(($a / $b))
# echo $sum
# echo $diff
# echo $mul
# echo $div