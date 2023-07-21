echo "1.Upper Case"
echo "2.Lower Case"
echo "Enter Your Choise:"
read ch
echo "Enter String:"
read st
case $ch in
1)echo $st | tr '[a-z]' '[A-Z]';;
2)echo $st | tr '[A-Z]' '[a-z]';;
*)echo "Invalid Choise"
esac
