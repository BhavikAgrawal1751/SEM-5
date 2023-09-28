#sum and armstrong num
#example -- 153,371,370,407
read -p "Enter a number: " num
rev=0
n1=$num
while [ $num -gt 0 ]; do
r=`expr $num % 10`
#rev=`expr $rev \* 10 + $r`
sum=`expr $sum + $r \* $r \* $r`
num=`expr $num / 10`
done
echo "sum is $sum"
if [ $sum -eq $n1 ]; then
echo "armstrong"
else 
echo "not armstrong "
fi