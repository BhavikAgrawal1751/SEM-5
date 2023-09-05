for f in $* ; do
if [  ] then
cat $f | tr "[a-z]" "[A-Z]" > tmp
mv tmp $f
else 
echo "file $f does not exist"
fi
done
