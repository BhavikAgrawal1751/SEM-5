echo "Enter number  : -  "
read a
echo "\nTable of $a \n"
for var1 in 1 2 3 4 5 6 7 8 9 10
do
b=`expr $a  \*  $var1`
echo "$a x $var1 = $b"
done
