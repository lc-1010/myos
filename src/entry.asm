# os/src/entry.asm 
# 实际指令 li x1, 100
#希望将第 2 行后面的内容全部放到一个名为 .text.entry 的段中
#告知编译器 _start 是一个全局符号,因此可以被其他目标文件使用
#_start符号指向紧跟在符号后面的内容——也就是位于第 5 行的指令，因此符号 _start 的地址即为第 5 行的指令所在的地址
#li 是 Load Immediate 的缩写，也即将一个立即数加载到某个寄存器，因此这条指令可以看做将寄存器 x1 赋值为 100

        .section .text.entry
        .globl _start
    _start:
        li x1, 100
