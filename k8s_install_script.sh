#!/bin/bash

echo "Hello world"
echo hello
if [ $?  != 0 ]
then 
	echo "not ok"
else
	echo "sucess !"
fi

# start script

# 关闭swap
swapoff  -a



```
考虑几个问题：

如何在脚本运行关键语句不正确时停止脚本的运行？

如何在脚本运行非关键语句不正确的时候忽略错误继续执行，但是在脚本执行的最后对错误进行告警？


```

