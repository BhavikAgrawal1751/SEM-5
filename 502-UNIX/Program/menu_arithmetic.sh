
echo "1.Add"
echo "2.Subtract"
echo "3.Multiply"
echo "4.Divide"
echo "\n         Enter Choice : - "
read ch
echo "Enter num 1 : -"
read num_1

echo "Enter num 2 : -"
read num_2
case $ch in
1)ans=`expr $num_1 + $num_2`
echo "$ans";;
2) echo "Baki hai";;
*) echo "Invalid choice";;
esac
