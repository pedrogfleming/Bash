# Given three integers (x,y,z and ) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.
# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.

read a
read b
read c

if [ "$a" = "$b" ] && [ "$a" = "$c" ] ;
then
  echo "EQUILATERAL"
elif [ "$b" = "$a" ] || [ "$b" = "$c" ] || [ "$c" = "$a" ] ;
then
  echo "ISOSCELES"
else
  echo "SCALENE"
fi

# Option 2
# function readInt {
#     read line
#     echo $line
# }
# a=$(readInt)
# b=$(readInt)
# c=$(readInt)
# if [ $a = $b ] && [ $a = $c ]; then
#     echo "EQUILATERAL";
# elif [ $a = $b ] || [ $a = $c ] || [ $b = $c ]; then
#     echo "ISOSCELES";
# else
#     echo "SCALENE";
# fi

# Option 3
# read a
# read b
# read c
# if [ $a -eq $b ] || [ $a -eq $c ] || [ $c -eq $b ];then
#     if [ $((a+b)) -eq $((c*2)) ];then
#         echo "EQUILATERAL"
#     else
#         echo "ISOSCELES"
#         fi
# else
#     echo "SCALENE"
#     fi

# Option 4
# read a
# read b
# read c

# if [[ $a == $b && $b == $c ]]
# then
#     echo 'EQUILATERAL';
# elif [[ $a == $b || $b == $c ]]
# then
#     echo 'ISOSCELES';
# else
#     echo 'SCALENE';
# fi

# Option 5
# unique_vals=($( cat - | sort -u ))

# if [[ ${#unique_vals[@]} -eq 3 ]]; then
#   echo "SCALENE"
# elif [[ ${#unique_vals[@]} -eq 2 ]]; then
#   echo "ISOSCELES"
# else 
#   echo "EQUILATERAL"
# fi

# Option 6 
# # determine the number of unique side values
# case $(cat - | uniq -u | wc -l) in
#     0) echo "EQUILATERAL";; 1) echo "ISOSCELES";; 3) echo "SCALENE"
# esac

# Option 7 
# case $(uniq -u - | wc -l) in
#     0) echo "EQUILATERAL";; 1) echo "ISOSCELES";; 3) echo "SCALENE"
# esac

# Option 8
# Solution based on counting number of unique values

# c=$(cat | tr ' ' "\n" | sort -n -u | wc -l)

# [ $c -eq 1 ] && echo EQUILATERAL
# [ $c -eq 2 ] && echo ISOSCELES
# [ $c -eq 3 ] && echo SCALENE

# Explain:The solution is based on sorting and counting distinct values using wc i.e word count.
#  So for instance, if you have input as 2,2,1
#the value of variable c would be 2 since it counts both these 2's as a single 2 alongwith 1.
# So logically your input 2,2,1 becomes 2,1 and word count gives you a count of distinct lines and thus variable c holds a value of 2 and thus its isoceles.
#And if the input is 3,3,3 then all these 3's are counted once and then the wc command would return the value of variable c as 1 and thus it would be equilateral.