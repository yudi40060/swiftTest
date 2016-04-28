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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
