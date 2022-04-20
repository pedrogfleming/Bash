# Display the  and  character from each line of text.
cut -c 2,7
# Option 2
# while read line
# do
#     echo ${line} | cut -c 2,7
# done

# Option 3
# rm -rf file.txt
# while read string
# do
#   echo $string >> file.txt
# done
# cut -c2,7 file.txt