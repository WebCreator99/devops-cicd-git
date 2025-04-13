echo "Enter a number: " 
read number
sum=$(echo "$number" | sed 's/./& /g' | awk '{ for(i=1; i<=NF; i++) s+=$i } END { print s }') 
echo "Sum of digits (without loops) is: $sum"


