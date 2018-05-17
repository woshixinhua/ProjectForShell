# author:Tobey
# day:2017.12.13
# 3、基本运算符
# bash不支持数学运算，通过expr表达式计算工具来实现算数运算。
# 表达式和运算符之间要有空格，不然会出错，如2 + 2是正确的，2+2是错误的
# 条件表达式用要放在方括号之间，且要有空格，如[ $a==$b ]是正确的，[$a==$b]是错误的
# 算数运算符

a=10
b=20
c=20

echo "a=$a, b=$b, c=$c" 
echo "a==b =>"$[ $a==$b ]
echo "b==c =>"$[ $b==$c ]
echo "a!=b =>"$[ $a!=$b ]

add=`expr $a + $b`
sub=`expr $a - $b`
mul=`expr $a \* $b`  # *号前必须加反斜杠\转义
div=`expr $a / $b`
remainder=`expr $a % $b` # 求余数
other=$a  # 赋值

echo "a+b=$add"
echo "a-b=$sub"
echo "a*b=$mul"
echo "a/b=$div"
echo "a%b=$remainder"

# 关系运算符,操作数是数值，返回布尔类型，true和false
# -eq 等于   eg:[ $a -eq $b ]
# -ne 不等于 eg:[ $a -ne $b ]
# -gt 大于
# -lt 小于
# -ge 大于等于
# -le 小于等于

# 布尔运算符,它的操作数数布尔值，返回值也是布尔值
# -a 与 eg:[ $a -eq $b -a $b -eq $c ]
# -o 或 eg:[ $a -gt $b -o $b -gt $c ]
# !  非 eg:[ !false ]

# 逻辑运算符,操作数数布尔值，返回布尔值。（不明白布尔运算值和逻辑运算符之间的区别在哪儿）
# && 逻辑的AND  eg:[[ $a -lt 20 && $b -gt 15 ]]
# || 逻辑的OR 
#

# 字符串运算符，操作数是字符串，返回值是布尔值
e="abc"
f="def"
# =  检测两个字符串是否相等 eg:[ $e = $f ]
# != 检测两个字符串是否不等 eg:[ $e != $f ]
# -z 检测字符串长度是否为0  eg:[ -z $e ]
# -n 检测字符串长度是否非0  eg:[ -n $e ]

# 文件测试运算符
# -b file 检测文件是否块设备文件，如果是，则返回 true。   eg:[ -b $file ]
# -c file 检测文件是否是字符设备文件，如果是，则返回 true。eg:[ -c $file ]
# -d file 检测文件是否是目录，如果是，则返回 true。
# -f file 检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。
# -r file 检测文件是否可读，如果是，则返回 true。
# -w file 检测文件是否可写，如果是，则返回 true。
# -x file 检测文件是否可执行，如果是，则返回 true。
# -e file 检测文件是否存在，如果是，则返回 true。
# -s file 检测文件是否为空，如果是，则返回 true。
# -p file 检测文件是否是有名管道，如果是，则返回 true。
# -g file 检测文件是否设置了SGID位，如果是，则返回 true。
# -k file 检测文件是否设置了粘着位（Sticky Bit），如果是，则返回 true。


