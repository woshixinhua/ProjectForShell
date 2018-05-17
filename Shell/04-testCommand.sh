# author:Tobey
# day:2017.12.13
# 4、shell test命令和流程控制
# test命令用来检查某个条件是否成立，可以对数值，字符串和文件三个方面的测试
# 对数值的测试使用关系运算符
# 不明白用test命令和不用有什么区别，可能是多一种方式吧
# 代码中的[]执行基本的算数运算，好像用{}也可以
# eg:
num1=100
num2=100
# 用test命令
if test $[num1] -eq $[num2]
then
	echo "they are equal"
else
	echo "they are not equal"
fi
# 用关系运算符
if [ $num1 -eq $num2 ]
then
	echo "they are equal"
else
	echo "they are not equal"
fi

a=3
b=4
result=$[a+b]
echo "result="$result

# for循环
# for var in item1 item2 ... itemN
# do
# 	command1
# 	command2
#  	commandN
# done
for loop in 2 3 4 5 6
do
	echo "the value is $loop"
done

for i in "this is a string"
do
 echo $i 
done
# while循环
# while condition
# do 
#   command
# done
# 
var=2
while(( $var<= 4))
do
	echo $var
	let "var++"
done
let b=4+5
echo $b
# while读取键盘输入

echo '按下<CTRL-D>退出'
echo -n '输入一些东西：'
while read FILM
do
	echo "我是输出:$FILM"
done

# until循环,循环至少执行一次
# until condition
# do
# 	command
# done

# case分支语句
# case 值 in
# 模式1)
# 	command1
# 	command2
#     	;;
# 模式2)
# 	command1
# 	command2
#	;;
# esac

echo "请输入1-4之前的数字"
read num
case $num in
	1) echo "the number is 1"
	;;
	2) echo "the number is 2"
	;;
	3) echo "the number is 3"
	;;
	4) echo "the number is 4"
esac

# 跳出循环:break和continue 

