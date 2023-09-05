str=$1
b=`echo $str|WC -c`
l=`expr $b -1`
echo length of string is $l
a=" "
for (( i=1 ; i>0 ; i-- ))
do
	c='echo $str|cut -c $i'
	a=$a$c
	done
	echo $a
