echo "enter 10 random digit"
temp=0
for (( i=0;i<10;i++ ))
do
	arr[$i]=$((RANDOM%900+100))
done
echo "print array ${arr[@]}"

for (( i=0;i<10;i++ ))
do
	for (( j=0;j<5-i-1;j++ ))
	do
		if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done

done
echo "sorted array: ${arr[@]}"

