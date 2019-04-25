## bash-base
bash base

系统命令自带的程序，一般在`/bin`或`/usr/bin`目录下。

一般使用`shell`编程：
1. 备份文件
2. 安装软件
3. 下载数据
4. 对文件操作等。

## 概念

> shell和shell脚本的概念

`shell`是指一种应用程序。
`shell脚本（shell script）`一种为shell编写的脚本程序。

通常所说的`shell`是指`shell script`。

> 运行方式

- `sh`
- `bash`
- 给执行权限之后，运行改文件。`chmod +x filename`

`shell`　脚本是一种弱类型语言。

## shell脚本

```bash
#!/usr/bin/env bash
#!/bin/bash
```
`#!`是一个约定的标记，它告知系统这个脚本需要什么解释器来执行。


> 变量

```bash
#!/user/bin/env bash

# set
NAME="john"

# get
echo "hello $NAME!"
```
变量名和等号之间不能有空格

> 字符串

```bash
NAME="john"
NAME2='masa'
NAME3=`asha`
```
双引号与\`\`可以解析变量，单引号直接输出。

拼接字符串：
```bash
NAME="john"
greeting="hello, "$NAME" !"
greeting_1="hello, ${NAME} !"

echo $greeting $greeting_1
```
获取字符串长度：
```bash
str='abcdefg'
echo ${#str}
```
提取子字符串:
```bash
str="company"
echo ${str:1:4}
```
> 流程控制

if:
```bash
#!/usr/bin/env bash

if [ -z "$str" ]; then
  echo "String is empty"
elif [ -n "$str" ]; then
  echo "String is not empty"
fi
```

for:
```bash
for i in {1..5}; do
	echo "Welcome $i"
done

for i in {5..50..5}; do
	echo "Welcome $i"
done

cat 1.sh | while read line; do
	echo $line
done

sum=0
count=1

for i in {1..100}; do
	sum=$[$sum+$count]
	count=$[$count+1]
done
echo $sum
```
switch:
```bash
echo "$1"
case "$1" in
	start)
	echo start;;
	stop)
	echo stop;;
	*)
	echo hello;;
esac
```

> 函数

```bash
# 定义函数
myfunc () {
	echo "hello $1"
}
# 调用函数
echo "You are $(get_name)"

# 定义函数 参数
function myfunc () {
	echo "hello world - $*"
}

# 调用函数
myfunc "John"


# 定义函数　局部变量
myfunc4 () {
	local myresult="some value"
	echo $myresult
}
# 调用
myfunc


# 定义
myfunc3 () {
	return 1
}
# 调用
if myfunc3; then
	echo 'success'
else
	echo "failure"
fi
```

> 输入

```bash
# $0为程序的路径和名称，$1...$9 ,${10}参数
# $# 参数的个数

echo `basename $0`
if [ $1 != 2 ]; then
	echo '2'
fi
```

> set 命令

```bash
#!/usr/bin/env bash

set -eux
set -o pipefail

echo 123
```
