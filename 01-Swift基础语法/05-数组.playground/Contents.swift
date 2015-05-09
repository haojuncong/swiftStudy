//: Playground - noun: a place where people can play

import UIKit

// 使用 []
// 定义的数组类型是 [String]
// 表示数组中，只能存放 字符串
// 在 oc 中的数组，分可变和不可变
// swift中 let 是不可变的， var 是可变的
let array1 = ["zhangsan", "lisi"]

// 遍历数组
for a in array1 {
    let str = "hello " + a
    println(str)
}

// 不能向不可变数组中追加元素
//array1.append("abc")

var array2 = ["aaa", "bbb"]
// 添加元素
array2.append("ccc")

// 如果定义数组时，指定的对象类型不一致
// 定义的数组类型是 [NSObject]
// 细节：11是一个整数，在 OC 中，如果要向数组中添加数字，需要转换成 NSNumber
// swift 中，可以直接添加 - 万物皆对象！
// 细节：通常在开始时，不建议在数组中使用不同类型的数据
var array3 = ["zzz", 11, "123"]
for a in array3 {
    let str = "hi \(a)"

    println(str)
}

// 数组的定义 & 实例化
// 定义，但是没有初始化
var array4: [String]

// 初始化一个字符串的可变数组
array4 = [String]()

array4.append("hello")
array4.append("world")
println(array4.capacity)

// 容量 = 2

// 删除数据，keepCapacity，是否保持容量
array4.removeAll(keepCapacity: false)

// 如果保持容量，再次追加元素的时候，每次超过容量
// 容量直接在现有容量基础上 * 2
// 如果没有保存容量，每次超过容量，直接在现有容量基础上 * 2
// 实际开发中，绝大多数，数组的容量是固定的，需要注意保持容量
// 以及声明的时候，指定容量
for i in 0...10 {
    array4.append("hello \(i)")
    println("\(array4) : \(array4.capacity)")
}


