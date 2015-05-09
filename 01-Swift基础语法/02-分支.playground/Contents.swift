//: Playground - noun: a place where people can play

import UIKit

/**
    if 在 C 语言中有一个特点：非零即真

    if (_dataList == nil) {
    }

    * 在 swift 中，没有非零即真的概念！只有 true/false
    * 在编写分支语句是，必须准确的指定条件的真假
*/

let i = 10

/**
    1> 条件不需要括号
    2> 必须要有 {}

    * 使用 swift 开发，要写出优雅的代码，非常有挑战
*/
if i > 5 {
    println("hello")
}

// 实际应用

// convenience init?() 表示这个方法未必能够真的实例化出来一个对象
// 在 oc 开发中，由于语法要求不严格，程序员通畅不考虑这些问题
// 这些问题，都留着到崩溃的时候
// 在 swift 中，要求在编写代码的时候，就必须考虑这些问题
// 能够尽早地发现错误！
let url = NSURL(string: "http://www.baidu.com/s?word=he")

if url != nil {
    // NSURLRequest(URL: url 必须要有值
    let request = NSURLRequest(URL: url!)
}

// 但是，如果要判断的条件很多，会让代码很难看！
// swift 的设计者提供了一个解决方案
// 使用 if 同时设置数值，这个技巧，在 swift 中，使用非常广
if let url = NSURL(string: "http://www.baidu.com/s?word=he") {
    // 代码执行到此，url 就一定有值，所以不需要再使用 `!`
    let request = NSURLRequest(URL: url)
}

// 实际的应用技巧
// ? 表示 可以有值(NSString)，也可以没有值(nil)
// ? 如果对象为空，就不会调用后面的方法，感觉上和 oc 中给 nil 发送消息类似
// 本质上不一样，如果对象是 空，就不调用后面的方法
// 提示：初学者，很多人对 ? ! 非常苦恼！可以借助 Xcode 智能提示辅助
// 刀哥提示：每次的 ? ! 都思索一下，用不来多久就会习惯！
var str: NSString?
str = "hello"

// 打印可选项的时候，同时会输出一个 Optional，提示开发者，这是一个可选项
println(str?.length)
//println(str!.length)

let l = 10
// 目前的代码存在什么风险？如果 str 没有设置初始值，会直接崩溃
// 苹果把判断对象是否有内容的工作交给了程序员
//let len = l + str!.length

// 隆重推荐：?? 用来快速判断对象是否为 nil
let len2 = l + (str?.length ?? 0)

// 以下代码和上面的代码等效
if str != nil {
    let len3 = l + str!.length
}

// ?? 的应用场景最多的就在tableView 的数据源方法

var array: [String]?
// 追加一项内容
array = ["hello", "world"]

println(array?.count ?? 0)













