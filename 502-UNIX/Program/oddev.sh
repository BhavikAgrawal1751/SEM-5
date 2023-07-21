echo "enter no"
read x
ans=`expr $x % 2`
if [ $ans -eq 0 ]
then
    echo "even"
else
    echo "odd"
fi