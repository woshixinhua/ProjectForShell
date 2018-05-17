# author:Tobey
# day:2017.12.13
# 6、shell包含外部脚本

# 语法
# . filename  # .和filename之间隔一个空格
# 或者
# source filename

. ./01-base.sh
# 或者
# source ./01-base.sh
echo "value of hello in 01-base.sh file is :$hello"


echo $hello
