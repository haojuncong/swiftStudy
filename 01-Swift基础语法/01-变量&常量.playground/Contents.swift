//: Playground - noun: a place where people can play

import UIKit

// playground 游乐场！
var str = "Hello, playground"
var hello = "Hello World!"

/**
    var: 变量 可以修改的
    let: 常量 一经定义不能修改

    提示：在 swift 开发中，通常先定义常量 let，只有必须要修改的时候，再改成 var
    因为 let 本身不允许被修改，因此更安全！
*/

// [[UIView alloc] initWithXXX:xxx]
// 所有 OC 中以上格式的实例化方法，在 swift 中都可以使用 类名(XXX:)
// 实例化一个 UIView 的对象，保存在堆中
let view = UIView(frame: CGRectMake(0, 0, 100, 100))
// 修改的是 view 的属性，并没有修改 view 本身的地址

// [UIColor redColor] 在 swift 中，通常使用 类名.函数名 可以找到对应的函数
view.backgroundColor = UIColor.redColor()

//view = UIView()

let btn = UIButton(frame: CGRectMake(20, 20, 60, 60))
btn.setTitle("hello", forState: UIControlState.Normal)
view.addSubview(btn)

var x = 10
x = 15

let y = 20
//y = 30

/**
    注意事项：swift 是一个对变量类型要求及其严格的语言

    * 任何数据类型之间，都不能隐式转换
    * 如果要在不同类型之间进行计算，必须转换格式

    * 整数的格式是 Int(long 64位的)
    * 小数的格式是 Double(OC中默认的小数格式 CGFloat)

    * 关于数据类型的推导，在给变量设置初始值的时候，根据"右边"来判断的
    * 在真正初始化的时候，才能决定变量的准确类型
*/

let i = 10
let j = 10.5

// 在定义变量的时候，也可以直接指定变量的类型，后续可以直接计算，不再需要转换
let z: Double = 8

let k1 = Double(i) + j
let k2 = i + Int(j)
let k3 = z + j

// array 的准确类型实际上是 可变的数组
// return [NSMutableArray array];



