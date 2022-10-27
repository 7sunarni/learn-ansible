# 常用内置模块使用

## command 模块
在目标机器上执行命令

## shell 模块
在目标机器上执行命令
**shell 模块和 command 模块的区别**
command 模块不会通过 shell 去执行命令，因此一些 shell 中用到的变量（e.g. $HOSTNAME）和操作符（e.g. * < > | & ;）是不能使用。如果要用这些变量和操作符的话就使用 shell 模块。

## copy 模块
从控制节点拷贝文件到目标节点

## replace 模块
修改目标节点上的文件

## fetch 模块
从目标节点拷贝文件到控制节点，和 copy 是反向动作

## 更多模块参考 ansible.builtin
