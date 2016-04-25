//
//  DemoView.swift
//  abc
//
//  Created by 于迪 on 16/4/12.
//  Copyright © 2016年 yudi. All rights reserved.
//

import UIKit

class DemoView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var clickBtn: UIButton!
    
    

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        makeupUI()
    }
    
    func makeupUI() {
        print("-------yudi--------")
        titleLabel.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width/2 - 30, 20, 60, 20)
        
        clickBtn.frame = CGRectMake(UIScreen.mainScreen().bounds.size.width/2 - 30 , 50, 60, 20)
        clickBtn.addTarget(self, action: #selector(changeButton), forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func changeButton() {
        if arc4random() % 2 == 1 {
            titleLabel.text = "yudi"
            titleLabel.textColor = UIColor.yellowColor()
            titleLabel.backgroundColor = UIColor.redColor()
        }else{
            titleLabel.text = "hello"
            titleLabel.textColor = UIColor.purpleColor()
            titleLabel.backgroundColor = UIColor.brownColor()
        }

    }

}
