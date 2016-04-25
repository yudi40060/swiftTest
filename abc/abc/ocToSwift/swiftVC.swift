//
//  swiftVC.swift
//  abc
//
//

import UIKit

class swiftVC: UIViewController {
    
    var backButton: UIButton!
    var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置页面属性
        self.view.backgroundColor = UIColor .yellowColor();
        //设置导航栏
        self.navigationItem.title = "swift"
        //页面布局
        //返回按钮
        backButton = UIButton.init(frame: CGRectMake(100, 100, 100, 100))
        backButton.setTitle("back", forState: UIControlState.Normal)
        backButton.backgroundColor = UIColor.redColor();
        backButton.addTarget(self, action:#selector(back), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(backButton)
        //前往下一级按钮
        goButton = UIButton.init(type: UIButtonType.System)
        goButton.frame = CGRectMake(100, 250, 100, 100)
        goButton.setTitle("Go", forState: UIControlState.Normal)
        goButton.backgroundColor = UIColor.blueColor()
        goButton.addTarget(self, action: #selector(go), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(goButton)
        
        //测试方法
        abc();
        bbbb()
        
    }
    func bbbb() {
        print("bbbb")
    }
    func hello(){
        print("Hello Yudi")
    }
    
    func back(){
        print("back")
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func go() {
        print("进入下一级swift页面")
        let vc = secondVC()
         self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

func abc() {
    let mySwift = swiftVC()
    mySwift.hello()

}








