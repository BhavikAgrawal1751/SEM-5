echo "Enter number :- "
read num
a=0
b=1
count=2
echo "Fibonnaci series :- "
echo $a
echo $b
while [ $count -le $num ]
do
fib=`expr $a + $b`
a=$b
b=$fib
echo $fib
count=`expr $count + 1`
done
