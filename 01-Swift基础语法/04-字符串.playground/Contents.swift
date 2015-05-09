//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, 大家一起飞"

/**
    在swift中，字符串默认的类型是 String，而不是 NSString

    * swift中 String 是一个结构体，的效率更高
        * 支持快速遍历
    * NSString，继承自 NSObject，是一个 OC 对象
        * 不支持快速遍历
*/

// 对字符串的快速遍历
for c in str {
    println(c)
}

// 字符串的拼接
let str1 = str + " hello"
let i = 100
let view = UIView()
view.backgroundColor = UIColor.redColor()
println(str1 + " \(i) abc \(view.backgroundColor)")

let frame = CGRectMake(100, 100, 200, 300)
println("区域 \(frame)")

// 但是：如果需要格式怎么办? NSString.stringWithFormat
let str2 = String(format: "%02d:%02d:%02d", arguments: [1, 5, 10])

/**
    在 swift 中，如果要结合 range 一起使用 字符串，建议先转成 NSString 再处理
*/
// 蛋疼的使用 String & Range -> 取子串
let myString: NSString = "hello"

// 费劲的写法
//let subStr = myString.substringWithRange(Range<String.Index>(start: advance(str.startIndex, 1), end: advance(str.startIndex, 3)))

myString.substringWithRange(NSMakeRange(1, 4))





