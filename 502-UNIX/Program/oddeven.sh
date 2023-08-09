echo "Enter no. "
read n
ans=`expr $x % 2`
if [ $ans -eq 0 ]
then
echo "even"
else
echo "odd"
fi