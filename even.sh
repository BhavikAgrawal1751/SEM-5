echo "Enter No"
read x
ans=`expr $x % 2`
if [ $ans -eq 0 ]
then
	echo "Even No"
else
	echo "odd No"
fi

