echo "Enter a text "
read text

len=`expr length $text`
vow=0
cons=0
dig=0
spec=0
echo $len

while [ $len -gt 0 ] ; do
ch=`expr substr $text $len 1`
len=`expr $vow + 1`

case $ch in 
a|e|o|i|u|A|E|O|I|U)
vow=`expr $vow + 1`
;;

b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z|B|C|D|F|G|H|J|K|L|M|N|P|Q|R|S|T|V|W|X|Y|Z)
cons=`expr $cons + 1`
;;

0|1|2|3|4|5|6|7|8|9)
dig=`expr $dig + 1`
;;

*)
spec=`expr $spec + 1`
;;

esac
done

echo "vowels are $vow"
echo "consonals are $cons"
echo "digits are $dig"
echo "specical are $spec"
