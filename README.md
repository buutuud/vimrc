#happyyi's vim_runtime

##VIM基础知识

silent>是指什么?
==

```
<silent>是指执行键绑定时不在命令行上回显，
比如
:map <silent> ,w /abcd<CR> 
你在输入,w查找abcd时，命令行上不会显示/abcd，如果没有<silent>参数就会显示出来 
```
 视图
==
```
n 普通 
v 可视和选择 
s 选择 
x 可视 
o 操作符等待 
! 插入和命令行 
i 插入 
l 插入、命令行和 Lang-Arg 模式的 ":lmap" 映射 
c 命令行 
0 行首
```

 编辑
==
```
CTRL-O goes to the older position, and CTRL-I or tab goes to the newer one
```

 数字
==
```
Ctrl-a Number+1
Ctrl-x Number-1
```
