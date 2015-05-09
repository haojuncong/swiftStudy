//: Playground - noun: a place where people can play

import UIKit

// 传统的写法，几乎一样
// 注意：需要使用 var 而不是 let
for var i = 0; i < 10; i++ {
    println(i)
}

// 更加方便的写法
// in 指定范围 0~9
// 早期的 swift 语法 .. 后来改成了 ..<
for i in 0..<10 {
    println(i)
}

// 0~10
for i in 0...10 {
    println(i)
}

// 如果遍历的时候，对索引下标不关注
// 其实 `_` 在 swift 中，使用的非常广泛，主要用于忽略
for _ in 0...5 {
    println("hello")
}



