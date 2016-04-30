//
//  homeVC.swift
//  abc
//
//  Created by 于迪 on 16/4/8.
//  Copyright © 2016年 yudi. All rights reserved.
//

import UIKit

class homeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor .redColor();
        
        self.navigationItem.title = "首页"
        
        let myView = NSBundle.mainBundle().loadNibNamed("DemoView", owner: nil, options: nil).first as! DemoView
        myView.frame = CGRectMake(0, 64, UIScreen.mainScreen().bounds.size.width, 100)
        
        self.view.addSubview(myView)
        
//        basicTest()
        
//        basicTest2()
        
//          basicTest3()
        
        basicTest4()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func basicTest() {
        //1.类型转换
        let a: UInt8 = 10
        let b: UInt16 = 100
        print("\(UInt16(a) + b)")
        
        let sa = 3
        let pi = 3.1415
        let add = Double(sa) + pi
        print("add = \(add)")
        //2.类型别名
        typealias AudioSample = UInt16
        let maxValue = AudioSample.max
        let minValue = AudioSample.min
        print("max = \(maxValue), min = \(minValue)")
        //3.元组
        let people = (18,"yudi")
        let (age, name) = people
        print("age is \(age)")
        print("name is \(name)")
        //分解时要忽略的部分用_表示
        let (justAge, _) = people
        print("The age is \(justAge)")
        print("\(people.0)")
        //定义元组的时候，给单个元素命名
        let rec = (w : 10, h : 20)
        print("\(rec.h)")
        print("\(rec.w)")
        //4.可选类型：处理值可能缺失的情况
        // nil表示一个确定的值，表示值缺失
        var serverCode: Int? = 404
        serverCode = nil //现在 serverCode 不包含值
        var suny: String?
        //隐式解析可选类型：第一次被赋值之后，可以确定一个可选类型总会有值，不要在变量没有值的时候使用
        var possibleStr: String! = "jikexueyuan"
        print(possibleStr)
        
        //5.断言
        let age2 = -10
        assert(age2 >= 0, "年龄要大于0")
        
    }
    
    func basicTest2() {
        //1.swift中赋值语句不返回任何值,避免了少打一个“=”的可能性
        let a = 3;
        let b = 4
        if a == b {
            
        }
        //2.溢出运算符 &+ , &- , &*
        var c = UInt8.min
        c = c &- 1
        print(c)
        //3.对浮点数求余数
        let rem = 10 % 2.3
        print(rem)
        //4.空合并运算符 (a ?? b) 将对可选类型a进行空判断，如果a包含一个值就进行解封，否则就返回一个默认值b
        /*
           表达式a必须是可选类型
           默认值b的类型必须要和a存储值的类型保持一致
        */
        let words = "hello"
        let say: String = "jike"
        let content = say ?? words
        print(content)
        //5.闭区间运算符 a...b; 半开区间运算符 a..<b(包括a，不包括b)
        for i in 1...5 {
            print(i)
        }
        //6.字符串
        var str1 = "极客"
        var str2 = String() //初始化字符串实例
        var str3 = str1 + "学院" //用 + 拼接
        str1 += "nihao"   //用 += 将字符串拼接到自身
        
        let char:Character = "!"
        str1.append(char)
        print(str1)
    
        let quotation = "same"
        let sameQu = "same"
        if quotation == sameQu {
            print("same")
        }
        
        var food = ["Fruits : apple",
                    "Fruits : orange",
                    "Fruits : banana",
                    "Vegetables : tomato",
                    "Vegetables : potato"] // 数组
        // 检查字符串是否拥有特定前缀/后缀，两个方法均需要以字符串作为参数传入并传出Boolean值
        for fru in food {
            if fru.hasPrefix("Fruits") {
//                print(fru)
            }
            if fru.hasSuffix("o") {
                print(fru)
            }
        }
        
        //7.数组
        food.append("Vegetables: aaa")  // 添加新数据项
        food[0...2] = ["ss","nn"]   // 根据下标替换
        print(food)
        food.insert("Meat", atIndex: 0)
        //使用构造语法来创建一个由特定数据类型构成的空数组
        var someInt = [Int]()
        
    }
    
    func basicTest3() {
        //1.字典 Swift 的字典使用时需要具体规定可以存储键和值类型，必须提前定义清楚，方法是通过显性类型标注或者类型推断
        var person = ["age": 18,
                      "name": "Jack"];
        // updateValue(forKey:)方法在这个键不存在对应值的时候设置值或者存在时更新已存在的值，和上面的下标方法不一样，这个方法返回更新值之前的原值，这样方便我们检查更新是否成功
        if let oldName = person.updateValue("Jack", forKey: "name"){
            print("原来的值:\(oldName)")
        }
        print(person)
        
        //2. removeValueForKey 方法也可以用来在字典中移除键值对
//        person.removeValueForKey("age")
//        print(person)
        //3.每一个字典中的数据项都由（key，value）元组形式返回，并且我们可以使用临时常量或者变量来分析这些元组
        for (key, value) in person {
            print("\(key): \(value)")  // 字典是无序的
        }
        //声明字典
        var dic = Dictionary<String , Int>()
        dic["年龄"] = 16
        print(dic)
        
        dic = [:] //空字典
        print(dic)
        // 通过常量或者变量决定数组（字典）是否可变
        
        //4.控制流
        let base = 3
        let power = 10
        var answer = 1
        for _ in 1...power {
            // 下划线_(替代循环中的变量)能够忽略具体的值，并且不提供循环遍历对值的访问
            answer *= base
        }
        print(answer)
        
        //5.switch 不用加break，如果想进入下一个分支可以在每个需要该特性的case分支使用fallthrough关键字
        let count = 0
        let countedThings = "stars in the Milky Way"
        var naturalCount: String
        switch count {
        case 0:
            naturalCount = "no"
            fallthrough
        case 1...3:
            naturalCount = "a few"
        case 4...9:
            naturalCount = "several"
        case 10...99:
            naturalCount = "tens of"
        case 100...999:
            naturalCount = "hundreds"
        case 1000...999_999:
            naturalCount = "thousands of"
        default:
            naturalCount = "millions and millions of"
        }
        print(naturalCount)

    }
    
    func basicTest4() {
        //1.函数
        func sayHello(personName: String) ->String{
            return "Hello," + personName + "!"
        }
//        print(sayHello("Anna"))
        
        func lenthNumber(start: Int, end: Int) ->Int{
            return end - start
        }
//        print(lenthNumber(1, end: 10))
        
        //局部参数名 例如personName，只能在函数体内部使用，外部参数名写在局部参数名之前，用空格分隔
        //toString 外部参数名， s2 是内部参数名
        //s1 外部参数名，也是内部参数名
        func join(s1: String, toString s2: String, withJoiner joiner:String) ->String{
            return s1 + joiner + s2
        }
//        print(join("hello", toString: "world", withJoiner: ","))
        //如果 joiner 的值没有被指定，函数会使用默认值(" "),当你未给带默认值的参数提供外部参数名时，Swift会自动提示外部名字，此时外部参数名与局部名字是一样的
        
        // 没有指定返回类型的函数总返回 Void，在Swift中，Void与空的元组是一样的
        func addTwoInts(a: Int, b: Int) -> Int{
            return a + b
        }
        func multiplyTwoInts(a: Int, b: Int) -> Int{
            return a * b
        }
        //定义一个叫做 mathFunction 的变量，类型是‘一个有两个Int型参数并返回一个Int型的值的函数’
        var mathFunction: (Int,Int) -> Int = addTwoInts
//        print("Result:\(mathFunction(2,3))")
        //第二种
        func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int){
            print("Result: \(mathFunction(a, b))")
        }
        printMathResult(addTwoInts, a: 3, b: 5)
        
        //类
        class Person{
            var name = "Tina"
            var age = 19
            var height = 172.2
            func produce() {
                age += 1
            }
        }
        // 结构体、类和枚举能够定义方法
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
