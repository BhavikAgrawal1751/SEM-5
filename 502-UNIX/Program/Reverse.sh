echo "Enter No :- "
read n
rev=0
sum=0
while [ $n -gt 0 ]
do
r=`expr $n % 10`
rev=`expr $rev \* 10 + $r`
sum=`expr $num + $r`
n=`expr $n / 10`
done
echo "Rev is $rev"
echo "Sum is $sum"
