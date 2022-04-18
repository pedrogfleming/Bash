# A mathematical expression containing +,-,*,^, / and parenthesis will be provided. Read in the expression, then evaluate it. Display the result rounded to 3 decimal places.
read a
printf %.3f $(echo "$a" | bc -l) 

# Option 2
# printf "%.3f" "$(bc -l)"

# Option 3
# read line
# ans1=`(echo "scale = 4; ($line)" | bc)` # 100/47.89+0.0005
# # echo $ans1 #2.0886
# IFS='.' read -a fnum <<< "$ans1"
# dig="${fnum[1]:3}"
# echo $dig #6
# mantissa=`echo "${fnum[1]}" |cut -c1-3`
# # echo $mantissa #088
# if [ "$dig" -ge "5" ]
# then
#     mantissa=$((mantissa+1))
# fi
# # echo $mantissa #088
# ans=${fnum[0]}$"."$mantissa
# echo $ans

# Option 4
# read num
# echo $num | bc -l | xargs printf "%.3f"