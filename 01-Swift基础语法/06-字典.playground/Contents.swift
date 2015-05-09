//: Playground - noun: a place where people can play

import UIKit

// 定义一个字典，仍然使用 []
// 以下代码定义的字典类型是：[String : NSObject]
// 在目前的 swift 版本中，定义字典通常使用 [String : NSObject]
// 大多数情况下，key的类型是固定的
let dict = ["name": "zhangsan", "title": "boss", "age": 18]

// 遍历字典(注意：k, v 可以随便写，但是，前面是 key, 后面是 value)
for (kk, vv) in dict {
    println("\(kk) -- \(vv)")
}

/**
    let 是不可变的
    var 是可变的
*/
// 定义并且实例化字典
var dict1 = [String: NSObject]()

// 设置内容
dict1["name"] = "laowang"
dict1["age"] = 80

dict1

// 注意：如果 key 已经存在，设置数值时，会覆盖之前的值
dict1["name"] = "abc"
dict1

// 删除内容
dict1.removeValueForKey("age")
dict1

// 合并字典
var dict2 = ["title": "boss"]
dict2["name"] = "wangxiaoer"

// 字典的特性：key是不允许重复的
// 利用循环来进行合并
// 1> 遍历 dict2
for (k, v) in dict2 {
    // updateValue 更新指定 key 的 value
    // 如果不存在 key，会新建，并且设置数值
    // 如果存在 key，会直接覆盖
    dict1.updateValue(v, forKey: k)
}

dict1
dict2




