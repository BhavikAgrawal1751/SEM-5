if [ $# -ne 2 ]  
then
	echo "No Argument"
elif [ ! -e $1 -o ! -e $2 ] 
then
	echo "File does not exists"
else
	p1=`ls -l $1 | cut -c2-10`
	p2=`ls -l $2 | cut -c2-10`
if [ $p1 = $p2 ] 
then
	echo "file permission are equal & ls $p1"
else 
	echo "file permission are not equal"
	echo "1st file $p1"
	echo "2nd file $p2"
	fi
fi
