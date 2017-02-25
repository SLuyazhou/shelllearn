#!/bin/bash
#coding:utf-8

#calc.sh
#循环加法
sum=0;
while [ $sum -lt 10000 ]
do
	#there are four ways to claculate 
	((sum++))
	#let sum++
	#i=$(expr $sum + 1)
	#i=$(echo $sum+1|bc)
	#i=$(echo "$sum 1"|awk '{printf $1+$2;}')
done
echo $sum

#求模

i=10;
i=$(expr $i % 3)
echo $i

i=10
let i=$i%3
echo $i


echo 10%3|bc

i=10
i=$(($i%3))
echo $i

#求幂

let i=5**2
echo "5**2 is "$i

((i=5**2))
echo "5**2 is "$i

echo "5^ 2"|bc

#进制转换

echo "obase=10;ibase=8;11"|bc -l
echo $((8#11))

#ascii 字符编码
echo -n "$IFS" |od -c
echo -n "$IFS" |od -b

#浮点运算
echo "scale=3;1/13" |bc
echo "1 13" |awk '{printf("%0.3f\n",$1/$2)}'
