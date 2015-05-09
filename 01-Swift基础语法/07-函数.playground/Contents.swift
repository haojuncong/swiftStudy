//: Playground - noun: a place where people can play

import UIKit

// 定义`函数`
// OC 的 风格 - (void)函数名(参数) {}
/**
    函数定义格式
    func 函数名(参数列表) -> 返回值 {// 代码实现}

    * -> 是 swift 特有的，表示 前面的执行结果，输出给后面的
*/
func sum(a: Int, b: Int) -> Int {
    return a + b
}

sum(10, 20)

// 强制填写参数，使用 #，可以在调用的时候，增加参数
// 会让代码提示更直观，符合 OC 程序员的习惯
func sum1(#a: Int, #b: Int) -> Int {
    return a + b
}

sum1(a: 20, b: 80)


// 如果没有返回值 `-> 返回值` 可以省略
/**
    -> Void
    -> ()
    完全省略

    以上三个是等价的
*/
func demo(a: Int) -> () {
    println(a)
}

demo(10)
