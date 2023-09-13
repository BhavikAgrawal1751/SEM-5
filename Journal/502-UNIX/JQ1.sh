for i in $*
do
if [ -d $i ]
then
echo " large file size is "
echo `ls -Rl $1 | grep "^-" | tr -s ' ' | cut -d ' ' -f 5,9 | sort -n |
tail -1`
else
echo " not a directory "
fi
done
