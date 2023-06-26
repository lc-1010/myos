#![no_main]
#![no_std]
mod lang_items;

use core::arch::global_asm;
//我们通过 include_str! 宏将同目录下的汇编代码 entry.asm
// 转化为字符串并通过 global_asm! 宏嵌入到代码中。
global_asm!(include_str!("entry.asm"));

// fn main() {
//     //println!("Hello, world!");
// }
