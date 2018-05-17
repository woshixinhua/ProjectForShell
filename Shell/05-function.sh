# author:Tobey
# day:2017.12.13
# 5、shell函数

# 函数定义
# [ function ] funname [()]
# {
# 	action;
# 	[return int;]  # 函数返回值可显示添加return 也可以不用，如果不加，则将最后一条语句执行结果返回
# }

# eg:
demoFun(){
	echo "my first shell function"
}
echo "--begin function--"
demoFun
echo "--end function--"

funWithParam(){
echo "第一个参数为 $1 !"
echo "第二个参数为 $2 !"
echo "第十个参数为 $10 !"
echo "第十个参数为 ${10} !"
echo "第十一个参数为 ${11} !"
echo "参数总数有 $# 个!"
echo "作为一个字符串输出所有参数 $* !"
}
$command 2 > ./test.txt
echo "我是重定向！"

funWithParam 1 2 3 4 5 6 7 8 9 34 73
