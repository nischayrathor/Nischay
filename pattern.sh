#!/bin/bash
#echo -n "Enter any number: "
#read n
#echo "You entered $n"
#i=1;j=1
n=$1 ## first command line attribute
for ((i=1; i<=n; ++i))
do
  for ((j=1; j<=i; ++j))
    do
     echo -n "*"
done
echo ""
done
