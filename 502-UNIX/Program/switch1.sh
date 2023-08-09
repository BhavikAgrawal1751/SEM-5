echo "1.Upper case"
echo "2.Lower case"
echo "Enter your choice :"
read ch
echo "Enter String : "
read st
case $ch in
1)echo $st | tr '[a-z]' '[A-Z]' ;;
2)echo $st | tr '[A-Z]' '[a-z]' ;;
*) echo "Invalid choice"
esac
