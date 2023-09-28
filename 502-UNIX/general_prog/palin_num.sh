#reverse and palindrome num
read -p "Enter a number: " num
rev=0
n1=$num
while [ $num -gt 0 ]; do
r=`expr $num % 10`
rev=`expr $rev \* 10 + $r`
num=`expr $num / 10`
done
echo "reverse is $rev"
if [ $rev -eq $n1 ]; then
echo "palindrome"
else 
echo "not palindrome "
fi