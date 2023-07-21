clear
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Divison"
read ch
echo "Enter 2 Number:"
read a
read b
case $ch in
1) ans=`expr $a + $b`
	echo $ans;;
2) ans=`expr $a - $b`
	echo $ans;;
3) ans=`expr $a \* $b`
	echo $ans;;
4) ans=`expr $a / $b`
	echo $ans;;
*) echo "Invalid Choise"
esac

