echo "Enter number  : -  "
read a
echo "\nTable of $a \n"
var1=0
while [  $var1 -lt 10  ]
do
var1=`expr $var1 \+ 1`
b=`expr $a  \*  $var1`
echo "$a x $var1 = $b"
done
