//
//  AppDelegateService.swift
//  abc
//
//  Created by 于迪 on 16/4/8.
//  Copyright © 2016年 yudi. All rights reserved.
//

import UIKit

class AppDelegateService: NSObject {
    var myTabbar: UITabBarController!
    
    
    func initUI() {
        print("初始化tabbar")
        
        myTabbar = UITabBarController.init()
        
        let vc1 = homeVC()
        let homeNC: UINavigationController! = UINavigationController.init(rootViewController: vc1)
        homeNC.tabBarItem.image = UIImage.init(named: "tab_normal_1")
        homeNC.tabBarItem.selectedImage = UIImage.init(named: "tab_select_1")
        homeNC.view.backgroundColor = UIColor.whiteColor()
        homeNC.title = "首页"
        
        let vc2 = specialVC()
        let specialNC: UINavigationController! = UINavigationController.init(rootViewController: vc2)
        specialNC.tabBarItem.image = UIImage.init(named: "tab_normal_2")
        specialNC.tabBarItem.selectedImage = UIImage.init(named: "tab_select_2")
        specialNC.title = "特卖会"
        
        let vc3 = sayGoVC()
        let sayGoNC: UINavigationController! = UINavigationController.init(rootViewController: vc3)
        sayGoNC.tabBarItem.image = UIImage.init(named: "tab_normal_3")
        sayGoNC.tabBarItem.selectedImage = UIImage.init(named: "tab_select_3")
        sayGoNC.title = "说走就走"
        
        let vc4 = settingVC()
        vc4.tabBarItem.image = UIImage.init(named: "tab_normal_4")
        vc4.tabBarItem.selectedImage = UIImage.init(named: "tab_select_4")
        vc4.title = "设置1"
        
        let settingNC = UINavigationController.init(rootViewController: vc4)
        settingNC.tabBarItem.image = UIImage.init(named: "tab_normal_4")
        settingNC.tabBarItem.selectedImage = UIImage.init(named: "tab_select_4")
        settingNC.title = "设置2"
        
        let viewControllers = [homeNC,specialNC,sayGoNC,settingNC]
        myTabbar.viewControllers = viewControllers as? [UINavigationController]
        
        getAppDelegate().rootViewController = myTabbar;
        
    }
    
    func getAppDelegate() -> UIWindow {
        let application: UIApplication = UIApplication.sharedApplication()
        let window: UIWindow = application.keyWindow!
        return window
        
    }
    
}
