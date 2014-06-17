//
//  FirstView.swift
//  SwiftPageChange3
//
//  Created by 阿部 潤平 on 2014/06/17.
//  Copyright (c) 2014年 Self. All rights reserved.
//

import Foundation
import UIKit

class FirstView: UIView {
    
    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    
    init (frame: CGRect) {
        super.init(frame: frame)
        
        label.frame = CGRectMake(50, 60, 200, 30)
        label.text = "Hello Swift! pageChange3"
        label.textColor = UIColor.blackColor()
        
        self.addSubview(label)
        
        button.frame = CGRectMake(100, 100, 120, 40)
        button.setTitle("遷移", forState: UIControlState.Normal)
        button.addTarget(self, action:"changePage:", forControlEvents:UIControlEvents.TouchUpInside)
        self.addSubview(button)
    }
    
    func changePage(sender: UIButton) {
        NSLog("タッチ")
    }
}