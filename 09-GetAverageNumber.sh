# Given N integers, compute their average, rounded to three decimal places.
read num
sum=0 .wwwwwwwwwwwwwwdwsad1
i=0
while [ $i -lt $num ]
do
    read x
    #sum=$((sum + x))
    let sum=sum+x
    let i=i+1
done
printf "%0.3f\n" $(echo "scale=5; $sum / $num" | bc -l)

# Option 2
# sum=0
# read n
# while read -r line || [[ -n "$line" ]]; do
#     sum=$(($sum + $line))
# done
# printf "%.3f" $(echo "scale=10; $sum/$n" | bc -l)

# Option 3
# https://www.hackerrank.com/challenges/bash-tutorials---compute-the-average/forum/comments/133151
read n #statement at start is just to read the size of the list of integers (size of array).
arr=($(cat)) #reads in the array [1,3,5,6]
# arr=${arr[*]} #render a new variable of type string from the merging of the array arr delimited by space, i.e., from [1,3,5,6] to "1 3 5 6"
# ${arr// /+} #-> replaces all spaces ' ' in the string variable with + ,i.e., we get "1+3+5+6"
# $((exp)) -> evaluates the expression "exp" by perfwwwwwwdwwwwwwwdwdsagvfbffff-orming arithmetic operations, here "exp" => ${arr// /+}. Thus + is treated as arithmetic operator and the string is evaluated sequentially form left to right. We get, 1+3+5+6 = 4+5+6 = 9+6 = 15
printf "%.3f" $(echo $((${arr// /+}))/$n | bc -l)
# Here I'm treating the list of numbers as an array. Let's take an example,
# Input:4,1,3,5,6
# Output:3.750
# read n -> statement at start is just to read the size of the list of integers (size of array).
# arr=($(cat)) -> reads in the array [1,3,5,6]
# arr=${arr[*]} -> render a new variable of type string from the merging of the array arr delimited by space, i.e., from [1,3,5,6] to "1 3 5 6"
# ${arr// /+} -> replaces all spaces ' ' in the string variable with + ,i.e., we get "1+3+5+6"
# $((exp)) -> evaluates the expression "exp" by performing arithmetic operations, here "exp" => ${arr// /+}. 
# Thus + is treated as arithmetic operator and the string is evaluated sequentially form left to right.
#  We get, 1+3+5+6 = 4+5+6 = 9+6 = 15
# echo $((exp))/$n-> gives you '15/4' as the value. Bash does not support floating point arithmetic, so 'bc' command is one of the many alternatives.
#  So using 'bc' we get 3. The scale determines the number of digits which follow the decimal point in your result.
#   By default, the value of scale is zero.
#   (Unless you use the -l option in which case it defaults to 20 decimal places).
#    Hence you finally get 3.75000000000000000000.
# echo $((exp))/$n))  | bc -l -> this process of echoing and using the | operator together, just makes the output of the echo command an input for the bc program.
# $(echo $((exp))/$n | bc-l)->returns the evaluated value after using bc command. Thus we get 3.75000000000000000000 as the returned value.
# printf ".3f" -> it just gives you the result rounded upto 3 decimal places. So we get our desired output 3.750