#!/bin/bash
#coding:utf-8

#生成随机数据
#genrandomdata.sh

for i in $(seq 1 10)
do
    echo $i $((RANDOM/8192+3)) $((RANDOM/10+3000))
done
