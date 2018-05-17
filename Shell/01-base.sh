#!/bin/bash
#####我是注释######
# author:Tobey
# day:2017.12.13
# 1、打印字符串和数组
# 在终端执行脚本：
# 执行shell脚本的命令1：/bin/bash ./test.sh 这是执行当前文件夹的shell脚本，
# 如果shell文件前不加./解释器会到默认路径去找，导致找不到文件。
# 执行shell脚本的命令2：chmod +x ./test.sh 给文件添加执行的权限
# ./test.sh  执行脚本,这种方式需要在shell脚本的加上 #!/bin/bash
#
##################

# 定义一个字符串hello
hello="Hello world!"
# 打印一个变量，可用echo和printf,echo自动换行，printf格式化输出，和c语言格式相似，不会自动换行
echo ${hello}
printf "%s\n" ${hello}
# 获得字符串长度
echo ${#hello}
# 截取字符串换，从左边第几个字符开始，及字符串的个数
echo "sub string:"${hello:3:5}
# 定义一个数组
arr=(1 3 5 3 6 6)
# 打印一个数组元素
echo "arr[4]="${arr[4]}
# 获得数组元素的个数
length=${#arr[@]}
# 或者
length=${arr[*]}
# 获取数组单个元素的长度
lengthn=${#arr[n]}

echo ${hello:3}

