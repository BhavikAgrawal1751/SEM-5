echo "Enter Number:- "
read n
echo "Table of $n"
for var1 in 1 2 3 4 5 6 7 8 9 10 
do
b=`expr $n \* $var1`
echo "$n x $var1 = $b"
done
