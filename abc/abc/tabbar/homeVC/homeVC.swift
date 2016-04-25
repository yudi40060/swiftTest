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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
