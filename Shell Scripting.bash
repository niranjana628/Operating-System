echo "Hello World";

#! prime number
#!/bin/bash
echo -e "Enter Number : \c"
read n
for((i=2; i<=$n/2; i++))
do
  ans=$(( n%i ))
  if [ $ans -eq 0 ]
  then
    echo "$n is not a prime number."
    exit 0
  fi
done
echo "$n is a prime number."


#! reverse of a number
#!/bin/bash
echo "Enter a Number:"
read a
rev=0
sd=0
or=$a
while [ $a -gt 0 ]
do
sd=`expr $a % 10`
temp=`expr $rev \* 10`
rev=`expr $temp + $sd`
a=`expr $a / 10`
done
echo "Reverse of $or is $rev"
