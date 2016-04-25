//
//  secondVC.swift
//  abc
//
//  Created by 于迪 on 16/4/7.
//  Copyright © 2016年 yudi. All rights reserved.
//

import UIKit

class secondVC: UIViewController {

    var tabBar: UITabBarController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setSubviews()
        
    }

    func setSubviews() {
        self.view.backgroundColor = UIColor.brownColor()
        
        self.navigationItem.title = "swift二级页面"
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
