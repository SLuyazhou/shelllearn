#!/bin/bash
#coding:utf-8

[ $# -lt 1 ] && echo "please input the income file" && exit -1
[ ! -f $1 ] && echo "$1 is not a file" && exit -1

income=$1
awk '{printf("%d %0.2f\n",$1,$3/$2);}' $income |sort -k2 -n -r
