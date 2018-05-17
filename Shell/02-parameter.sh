#!/bin/bash
# author: Tobey.shi
# day:2017.12.13
# 2、向shell脚本传参数
# $0 获取当前文件
# $1 获取第一个参数值
# $2 或取第二个参数值
# $@ 把所有参数用一个字符串接收
# $* 把所有参数用一个数组接收
#

#echo "this file is:$0"
#echo "first parameter is:$1"
#echo "second parameter is:$2"
#echo "third parameter is:$3"
#echo "the number of parameter:$#"
#echo "all para:$@"
#echo "the process ID:$$"

arr=("one" 11 "two" 22) # 定义一个数组

# for遍历数组
for i in ${arr[@]};
do
	echo $i
done
echo "----我是华丽的分割线-----"
# while 遍历数组
j=0
# 注意[与$之间的空格
while [ $j -lt ${#arr[@]} ]
do
	echo ${arr[$j]}
	let j++
done





