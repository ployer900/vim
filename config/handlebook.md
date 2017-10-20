## 常用命令

### 1. 删除、复制、粘贴

dd  删除所在行
dw  删除一个字
x  删除当前字符
X 删除前一个字符
D 删除到行末
yy 复制一行，{n}yy表示从当前行复制n行
yw 复制一个字
y$ 复制到行末
p 粘贴到当前行的下面
P 粘贴到当前行的上面
]p 有缩进的粘贴，vim会自动调节代码缩进


### 2. 移动光标

h,j,k,l
<c-f> 上翻一页
<c-b> 下翻一页
% 跳转到与当前括号匹配的括号处
w 跳到下一个字首， 按标点或单词分隔
W 跳到下一个字首，长跳， 如abc-def-g视为一个字
e 跳到下一个字尾
E 跳到下一个字尾，长跳
b 跳到上一个字
B 跳到上一个字， 长跳

0 跳至行首
$ 跳至行尾

gg 跳至文件的第一行
G 跳至文件最后一行

f{x} 在当前行中查找字符x，找到了就跳转至字符x
t{x} 和f{x}类似，只是跳转至x的前一个字符处
F{x} 和f{x}方向相反
* 查找光标所在处的单词，向下查找
# 查找光标所在处的单词，向上查找